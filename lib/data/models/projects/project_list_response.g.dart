// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectListResponseImpl _$$ProjectListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => ProjectResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectListResponseImplToJson(
        _$ProjectListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
