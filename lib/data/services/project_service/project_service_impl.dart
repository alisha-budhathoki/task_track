import 'package:task_track/core/exceptions/exceptions.dart';
import 'package:task_track/data/models/projects/project_list_response.dart';
import 'package:task_track/data/models/projects/project_response.dart';
import 'package:task_track/data/services/project_service/project_service.dart';
import 'package:task_track/data/sources/remote_source/remote_source.dart';

class ProjectServiceImpl implements ProjectService {
  ProjectServiceImpl({required this.remoteSource});

  final RemoteSource remoteSource;

  static String singleProjectEndpoint({required String projectId}) {
    return 'projects/$projectId';
  }

  static String addProjectEndPoint = '/projects';

  @override
  Future<ProjectResponse> getSingleProject({required String projectId}) async {
    try {
      final response =
          await remoteSource.get(singleProjectEndpoint(projectId: projectId));

      return ProjectResponse.fromJson(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<ProjectResponse> createNewProject({
    required String projectName,
  }) async {
    try {
      final response = await remoteSource
          .post(addProjectEndPoint, body: {'name': projectName});

      return ProjectResponse.fromJson(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<void> deleteProject({required String projectId}) async {
    try {
      await remoteSource.delete(singleProjectEndpoint(projectId: projectId));
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<ProjectListResponse> getAllProjects() async {
    try {
      final response = await remoteSource.get(addProjectEndPoint);
      return ProjectListResponse.fromJson(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<ProjectResponse> updateProject({
    required String projectId,
    required String projectName,
  }) async {
    try {
      final response = await remoteSource.post(
        singleProjectEndpoint(projectId: projectId),
        body: {'name': projectName},
      );

      return ProjectResponse.fromJson(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}
