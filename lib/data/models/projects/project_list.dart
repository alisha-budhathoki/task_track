import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_track/data/models/projects/project_response.dart';
part 'project_list.freezed.dart';
part 'project_list.g.dart';

@freezed
class ProjectList with _$ProjectList {
  const factory ProjectList({
    required List<ProjectResponse> projectList,
  }) = _ProjectList;
  factory ProjectList.fromJson(Map<String, Object?> json) =>
      _$ProjectListFromJson(json);
}
