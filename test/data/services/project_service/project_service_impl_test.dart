import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:task_track/core/exceptions/exceptions.dart';
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
      "parent_id": 123,
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
      final result = await projectService.getSingleProject();

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
      expect(() => call(), throwsA(isA<ApiException>()));
      verify(mockRemoteSource.get(
          ProjectServiceImpl.singleProjectEndpoint(projectId: '2334106209')));
      verifyNoMoreInteractions(mockRemoteSource);
    });
  });
}
