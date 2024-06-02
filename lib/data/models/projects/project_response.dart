import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_response.freezed.dart';
part 'project_response.g.dart';

@freezed
class ProjectResponse with _$ProjectResponse {
  const factory ProjectResponse({
    required String id,
    String? parentId,
    required int order,
    required String color,
    required String name,
    int? commentCount,
    @Default(false) bool isShared,
    @Default(false) bool isFavorite,
    @Default(false) bool isInboxProject,
    @Default(false) bool isTeamInbox,
    required String url,
    String? viewStyle,
  }) = _ProjectResponse;
  factory ProjectResponse.fromJson(Map<String, Object?> json) =>
      _$ProjectResponseFromJson(json);
}
