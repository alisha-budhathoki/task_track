import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_vm.freezed.dart';

@freezed
class ProjectVM with _$ProjectVM {
  const factory ProjectVM({
    required String id,
    String? parentId,
    required int order,
    required String color,
    required String name,
    required int commentCount,
    required bool isShared,
    required bool isFavorite,
    required bool isInboxProject,
    required bool isTeamInbox,
    required String url,
    required String viewStyle,
  }) = _ProjectVM;
}
