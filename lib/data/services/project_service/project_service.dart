import 'package:task_track/data/models/projects/project_list_response.dart';
import 'package:task_track/data/models/projects/project_response.dart';

abstract class ProjectService {
  Future<ProjectResponse> getSingleProject({required String projectId});

  Future<ProjectListResponse> getAllProjects();

  Future<ProjectResponse> createNewProject(
      {required String projectId, required String projectName});

  Future<ProjectResponse> updateProject(
      {required String projectId, required String projectName});

  Future<void> deleteProject({required String projectId});
}
