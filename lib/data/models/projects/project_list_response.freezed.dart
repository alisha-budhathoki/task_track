// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectListResponse _$ProjectListResponseFromJson(Map<String, dynamic> json) {
  return _ProjectListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectListResponse {
  List<ProjectResponse> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectListResponseCopyWith<ProjectListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListResponseCopyWith<$Res> {
  factory $ProjectListResponseCopyWith(
          ProjectListResponse value, $Res Function(ProjectListResponse) then) =
      _$ProjectListResponseCopyWithImpl<$Res, ProjectListResponse>;
  @useResult
  $Res call({List<ProjectResponse> data});
}

/// @nodoc
class _$ProjectListResponseCopyWithImpl<$Res, $Val extends ProjectListResponse>
    implements $ProjectListResponseCopyWith<$Res> {
  _$ProjectListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProjectResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectListResponseImplCopyWith<$Res>
    implements $ProjectListResponseCopyWith<$Res> {
  factory _$$ProjectListResponseImplCopyWith(_$ProjectListResponseImpl value,
          $Res Function(_$ProjectListResponseImpl) then) =
      __$$ProjectListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProjectResponse> data});
}

/// @nodoc
class __$$ProjectListResponseImplCopyWithImpl<$Res>
    extends _$ProjectListResponseCopyWithImpl<$Res, _$ProjectListResponseImpl>
    implements _$$ProjectListResponseImplCopyWith<$Res> {
  __$$ProjectListResponseImplCopyWithImpl(_$ProjectListResponseImpl _value,
      $Res Function(_$ProjectListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ProjectListResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProjectResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectListResponseImpl implements _ProjectListResponse {
  const _$ProjectListResponseImpl({required final List<ProjectResponse> data})
      : _data = data;

  factory _$ProjectListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectListResponseImplFromJson(json);

  final List<ProjectResponse> _data;
  @override
  List<ProjectResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProjectListResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectListResponseImplCopyWith<_$ProjectListResponseImpl> get copyWith =>
      __$$ProjectListResponseImplCopyWithImpl<_$ProjectListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectListResponseImplToJson(
      this,
    );
  }
}

abstract class _ProjectListResponse implements ProjectListResponse {
  const factory _ProjectListResponse(
      {required final List<ProjectResponse> data}) = _$ProjectListResponseImpl;

  factory _ProjectListResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectListResponseImpl.fromJson;

  @override
  List<ProjectResponse> get data;
  @override
  @JsonKey(ignore: true)
  _$$ProjectListResponseImplCopyWith<_$ProjectListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
