import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_track/data/models/projects/project_response.dart';
part 'project_list_response.freezed.dart';
part 'project_list_response.g.dart';

@freezed
class ProjectListResponse with _$ProjectListResponse {
  const factory ProjectListResponse({
    required List<ProjectResponse> data,
  }) = _ProjectListResponse;
  factory ProjectListResponse.fromJson(Map<String, Object?> json) =>
      _$ProjectListResponseFromJson(json);
}
