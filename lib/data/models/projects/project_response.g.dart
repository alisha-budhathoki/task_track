// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectResponseImpl _$$ProjectResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectResponseImpl(
      id: json['id'] as String,
      parentId: json['parentId'] as String?,
      order: (json['order'] as num).toInt(),
      color: json['color'] as String,
      name: json['name'] as String,
      commentCount: (json['commentCount'] as num?)?.toInt(),
      isShared: json['isShared'] as bool? ?? false,
      isFavorite: json['isFavorite'] as bool? ?? false,
      isInboxProject: json['isInboxProject'] as bool? ?? false,
      isTeamInbox: json['isTeamInbox'] as bool? ?? false,
      url: json['url'] as String,
      viewStyle: json['viewStyle'] as String?,
    );

Map<String, dynamic> _$$ProjectResponseImplToJson(
        _$ProjectResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'order': instance.order,
      'color': instance.color,
      'name': instance.name,
      'commentCount': instance.commentCount,
      'isShared': instance.isShared,
      'isFavorite': instance.isFavorite,
      'isInboxProject': instance.isInboxProject,
      'isTeamInbox': instance.isTeamInbox,
      'url': instance.url,
      'viewStyle': instance.viewStyle,
    };
