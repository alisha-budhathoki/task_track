import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:task_track/core/exceptions/exceptions.dart';
import 'package:task_track/data/models/projects/project_list_response.dart';
import 'package:task_track/data/models/projects/project_response.dart';
import 'package:task_track/data/services/project_service/project_service_impl.dart';
import 'mock_remote_source.mocks.dart';

void main() {
  late ProjectServiceImpl projectService;
  late MockRemoteSource mockRemoteSource;

  setUp(() {
    mockRemoteSource = MockRemoteSource();
    projectService = ProjectServiceImpl(remoteSource: mockRemoteSource);
  });

  group('getSingleProject', () {
    final projectResponseJson = {
      "id": "2334106209",
      "parent_id": null,
      "order": 5,
      "color": "charcoal",
      "name": "New List",
      "comment_count": 0,
      "is_shared": false,
      "is_favorite": false,
      "is_inbox_project": false,
      "is_team_inbox": false,
      "url": "https://todoist.com/showProject?id=2334106209",
      "view_style": "list"
    };

    final projectResponse = ProjectResponse.fromJson(projectResponseJson);

    test(
        'should return ProjectResponse when the call to remote source is successful',
        () async {
      // Arrange
      when(mockRemoteSource.get(any))
          .thenAnswer((_) async => projectResponseJson);

      // Act
      final result =
          await projectService.getSingleProject(projectId: '2334106209');

      // Assert
      expect(result, equals(projectResponse));
      verify(mockRemoteSource.get(
          ProjectServiceImpl.singleProjectEndpoint(projectId: '2334106209')));
      verifyNoMoreInteractions(mockRemoteSource);
    });

    test(
        'should throw ApiException when the call to remote source is unsuccessful',
        () async {
      // Arrange
      when(mockRemoteSource.get(any)).thenThrow(Exception('Error'));

      // Act
      final call = projectService.getSingleProject;

      // Assert
      expect(() => call(projectId: '2334106209'), throwsA(isA<ApiException>()));
      verify(mockRemoteSource.get(
          ProjectServiceImpl.singleProjectEndpoint(projectId: '2334106209')));
      verifyNoMoreInteractions(mockRemoteSource);
    });
  });

  group('createNewProject', () {
    const projectName = 'New Project';
    final projectResponseJson = {
      "id": "2334106209",
      "parent_id": null,
      "order": 5,
      "color": "charcoal",
      "name": projectName,
      "comment_count": 0,
      "is_shared": false,
      "is_favorite": false,
      "is_inbox_project": false,
      "is_team_inbox": false,
      "url": "https://todoist.com/showProject?id=2334106209",
      "view_style": "list"
    };

    final projectResponse = ProjectResponse.fromJson(projectResponseJson);

    test(
        'should return ProjectResponse when the call to remote source is successful',
        () async {
      // Arrange
      when(mockRemoteSource.post(any, body: anyNamed('body')))
          .thenAnswer((_) async => projectResponseJson);

      // Act
      final result =
          await projectService.createNewProject(projectName: projectName);

      // Assert
      expect(result, equals(projectResponse));
      verify(mockRemoteSource.post(ProjectServiceImpl.addProjectEndPoint,
          body: {'name': projectName}));
      verifyNoMoreInteractions(mockRemoteSource);
    });

    test(
        'should throw ApiException when the call to remote source is unsuccessful',
        () async {
      // Arrange
      when(mockRemoteSource.post(any, body: anyNamed('body')))
          .thenThrow(Exception('Error'));

      // Act
      final call = projectService.createNewProject;

      // Assert
      expect(
          () => call(projectName: projectName), throwsA(isA<ApiException>()));
      verify(mockRemoteSource.post(ProjectServiceImpl.addProjectEndPoint,
          body: {'name': projectName}));
      verifyNoMoreInteractions(mockRemoteSource);
    });
  });

  group('deleteProject', () {
    test('should call delete on remote source with correct endpoint', () async {
      // Arrange
      when(mockRemoteSource.delete(any)).thenAnswer((_) async {});

      // Act
      await projectService.deleteProject(projectId: '2334106209');

      // Assert
      verify(mockRemoteSource.delete(
          ProjectServiceImpl.singleProjectEndpoint(projectId: '2334106209')));
      verifyNoMoreInteractions(mockRemoteSource);
    });

    test(
        'should throw ApiException when the call to remote source is unsuccessful',
        () async {
      // Arrange
      when(mockRemoteSource.delete(any)).thenThrow(Exception('Error'));

      // Act
      final call = projectService.deleteProject;

      // Assert
      expect(() => call(projectId: '2334106209'), throwsA(isA<ApiException>()));
      verify(mockRemoteSource.delete(
          ProjectServiceImpl.singleProjectEndpoint(projectId: '2334106209')));
      verifyNoMoreInteractions(mockRemoteSource);
    });
  });

  group('getAllProjects', () {
    final projectListJson = [
      {
        "id": "2334106209",
        "parent_id": null,
        "order": 5,
        "color": "charcoal",
        "name": "New List",
        "comment_count": 0,
        "is_shared": false,
        "is_favorite": false,
        "is_inbox_project": false,
        "is_team_inbox": false,
        "url": "https://todoist.com/showProject?id=2334106209",
        "view_style": "list"
      }
    ];

    final projectList = ProjectListResponse(
        data: projectListJson
            .map((json) => ProjectResponse.fromJson(json))
            .toList());

    test(
        'should return ProjectList when the call to remote source is successful',
        () async {
      // Arrange
      when(mockRemoteSource.get(any))
          .thenAnswer((_) async => {'data': projectListJson});

      // Act
      final result = await projectService.getAllProjects();

      // Assert
      expect(result, equals(projectList));
      verify(mockRemoteSource.get(ProjectServiceImpl.addProjectEndPoint));
      verifyNoMoreInteractions(mockRemoteSource);
    });

    test(
        'should throw ApiException when the call to remote source is unsuccessful',
        () async {
      // Arrange
      when(mockRemoteSource.get(any)).thenThrow(Exception('Error'));

      // Act
      final call = projectService.getAllProjects;

      // Assert
      expect(() => call(), throwsA(isA<ApiException>()));
      verify(mockRemoteSource.get(ProjectServiceImpl.addProjectEndPoint));
      verifyNoMoreInteractions(mockRemoteSource);
    });
  });

  group('updateProject', () {
    const projectName = 'Updated Project';
    final projectResponseJson = {
      "id": "2334106209",
      "parent_id": null,
      "order": 5,
      "color": "charcoal",
      "name": projectName,
      "comment_count": 0,
      "is_shared": false,
      "is_favorite": false,
      "is_inbox_project": false,
      "is_team_inbox": false,
      "url": "https://todoist.com/showProject?id=2334106209",
      "view_style": "list"
    };

    final projectResponse = ProjectResponse.fromJson(projectResponseJson);

    test(
        'should return ProjectResponse when the call to remote source is successful',
        () async {
      // Arrange
      when(mockRemoteSource.post(any, body: anyNamed('body')))
          .thenAnswer((_) async => projectResponseJson);

      // Act
      final result = await projectService.updateProject(
          projectId: '2334106209', projectName: projectName);

      // Assert
      expect(result, equals(projectResponse));
      verify(mockRemoteSource.post(
          ProjectServiceImpl.singleProjectEndpoint(projectId: '2334106209'),
          body: {'name': projectName}));
      verifyNoMoreInteractions(mockRemoteSource);
    });

    test(
        'should throw ApiException when the call to remote source is unsuccessful',
        () async {
      // Arrange
      when(mockRemoteSource.post(any, body: anyNamed('body')))
          .thenThrow(Exception('Error'));

      // Act
      final call = projectService.updateProject;

      // Assert
      expect(() => call(projectId: '2334106209', projectName: projectName),
          throwsA(isA<ApiException>()));
      verify(mockRemoteSource.post(
          ProjectServiceImpl.singleProjectEndpoint(projectId: '2334106209'),
          body: {'name': projectName}));
      verifyNoMoreInteractions(mockRemoteSource);
    });
  });
}
