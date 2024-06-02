import 'package:task_track/data/models/projects/project_response.dart';

abstract class ProjectService {
  Future<ProjectResponse> getSingleProject();
}
