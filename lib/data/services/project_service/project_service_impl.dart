import 'package:task_track/core/exceptions/exceptions.dart';
import 'package:task_track/data/models/projects/project_response.dart';
import 'package:task_track/data/services/project_service/project_service.dart';
import 'package:task_track/data/sources/remote_source/remote_source.dart';

class ProjectServiceImpl implements ProjectService {
  ProjectServiceImpl({required this.remoteSource});

  final RemoteSource remoteSource;

  static String singleProjectEndpoint({required String projectId}) {
    return 'projects/$projectId';
  }

  @override
  Future<ProjectResponse> getSingleProject() async {
    try {
      final response = await remoteSource
          .get(singleProjectEndpoint(projectId: '2334106209'));

      return ProjectResponse.fromJson(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}
