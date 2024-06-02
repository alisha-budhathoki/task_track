// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectListImpl _$$ProjectListImplFromJson(Map<String, dynamic> json) =>
    _$ProjectListImpl(
      projectList: (json['projectList'] as List<dynamic>)
          .map((e) => ProjectResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectListImplToJson(_$ProjectListImpl instance) =>
    <String, dynamic>{
      'projectList': instance.projectList,
    };
