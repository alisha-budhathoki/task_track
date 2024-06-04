// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectState {
  ProjectVM get projectVM => throw _privateConstructorUsedError;
  ProjectAddStatus get projectAddStatus => throw _privateConstructorUsedError;
  ProjectUpdateStatus get projectUpdateStatus =>
      throw _privateConstructorUsedError;
  ProjectLoadStatus get projectLoadStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
  @useResult
  $Res call(
      {ProjectVM projectVM,
      ProjectAddStatus projectAddStatus,
      ProjectUpdateStatus projectUpdateStatus,
      ProjectLoadStatus projectLoadStatus});

  $ProjectVMCopyWith<$Res> get projectVM;
  $ProjectAddStatusCopyWith<$Res> get projectAddStatus;
  $ProjectUpdateStatusCopyWith<$Res> get projectUpdateStatus;
  $ProjectLoadStatusCopyWith<$Res> get projectLoadStatus;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState>
    implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectVM = null,
    Object? projectAddStatus = null,
    Object? projectUpdateStatus = null,
    Object? projectLoadStatus = null,
  }) {
    return _then(_value.copyWith(
      projectVM: null == projectVM
          ? _value.projectVM
          : projectVM // ignore: cast_nullable_to_non_nullable
              as ProjectVM,
      projectAddStatus: null == projectAddStatus
          ? _value.projectAddStatus
          : projectAddStatus // ignore: cast_nullable_to_non_nullable
              as ProjectAddStatus,
      projectUpdateStatus: null == projectUpdateStatus
          ? _value.projectUpdateStatus
          : projectUpdateStatus // ignore: cast_nullable_to_non_nullable
              as ProjectUpdateStatus,
      projectLoadStatus: null == projectLoadStatus
          ? _value.projectLoadStatus
          : projectLoadStatus // ignore: cast_nullable_to_non_nullable
              as ProjectLoadStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectVMCopyWith<$Res> get projectVM {
    return $ProjectVMCopyWith<$Res>(_value.projectVM, (value) {
      return _then(_value.copyWith(projectVM: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectAddStatusCopyWith<$Res> get projectAddStatus {
    return $ProjectAddStatusCopyWith<$Res>(_value.projectAddStatus, (value) {
      return _then(_value.copyWith(projectAddStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectUpdateStatusCopyWith<$Res> get projectUpdateStatus {
    return $ProjectUpdateStatusCopyWith<$Res>(_value.projectUpdateStatus,
        (value) {
      return _then(_value.copyWith(projectUpdateStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectLoadStatusCopyWith<$Res> get projectLoadStatus {
    return $ProjectLoadStatusCopyWith<$Res>(_value.projectLoadStatus, (value) {
      return _then(_value.copyWith(projectLoadStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStateImplCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$$ProjectStateImplCopyWith(
          _$ProjectStateImpl value, $Res Function(_$ProjectStateImpl) then) =
      __$$ProjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProjectVM projectVM,
      ProjectAddStatus projectAddStatus,
      ProjectUpdateStatus projectUpdateStatus,
      ProjectLoadStatus projectLoadStatus});

  @override
  $ProjectVMCopyWith<$Res> get projectVM;
  @override
  $ProjectAddStatusCopyWith<$Res> get projectAddStatus;
  @override
  $ProjectUpdateStatusCopyWith<$Res> get projectUpdateStatus;
  @override
  $ProjectLoadStatusCopyWith<$Res> get projectLoadStatus;
}

/// @nodoc
class __$$ProjectStateImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateImpl>
    implements _$$ProjectStateImplCopyWith<$Res> {
  __$$ProjectStateImplCopyWithImpl(
      _$ProjectStateImpl _value, $Res Function(_$ProjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectVM = null,
    Object? projectAddStatus = null,
    Object? projectUpdateStatus = null,
    Object? projectLoadStatus = null,
  }) {
    return _then(_$ProjectStateImpl(
      projectVM: null == projectVM
          ? _value.projectVM
          : projectVM // ignore: cast_nullable_to_non_nullable
              as ProjectVM,
      projectAddStatus: null == projectAddStatus
          ? _value.projectAddStatus
          : projectAddStatus // ignore: cast_nullable_to_non_nullable
              as ProjectAddStatus,
      projectUpdateStatus: null == projectUpdateStatus
          ? _value.projectUpdateStatus
          : projectUpdateStatus // ignore: cast_nullable_to_non_nullable
              as ProjectUpdateStatus,
      projectLoadStatus: null == projectLoadStatus
          ? _value.projectLoadStatus
          : projectLoadStatus // ignore: cast_nullable_to_non_nullable
              as ProjectLoadStatus,
    ));
  }
}

/// @nodoc

class _$ProjectStateImpl extends _ProjectState {
  const _$ProjectStateImpl(
      {required this.projectVM,
      this.projectAddStatus = const ProjectAddStatus.initial(),
      this.projectUpdateStatus = const ProjectUpdateStatus.initial(),
      this.projectLoadStatus = const ProjectLoadStatus.initial()})
      : super._();

  @override
  final ProjectVM projectVM;
  @override
  @JsonKey()
  final ProjectAddStatus projectAddStatus;
  @override
  @JsonKey()
  final ProjectUpdateStatus projectUpdateStatus;
  @override
  @JsonKey()
  final ProjectLoadStatus projectLoadStatus;

  @override
  String toString() {
    return 'ProjectState(projectVM: $projectVM, projectAddStatus: $projectAddStatus, projectUpdateStatus: $projectUpdateStatus, projectLoadStatus: $projectLoadStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStateImpl &&
            (identical(other.projectVM, projectVM) ||
                other.projectVM == projectVM) &&
            (identical(other.projectAddStatus, projectAddStatus) ||
                other.projectAddStatus == projectAddStatus) &&
            (identical(other.projectUpdateStatus, projectUpdateStatus) ||
                other.projectUpdateStatus == projectUpdateStatus) &&
            (identical(other.projectLoadStatus, projectLoadStatus) ||
                other.projectLoadStatus == projectLoadStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectVM, projectAddStatus,
      projectUpdateStatus, projectLoadStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      __$$ProjectStateImplCopyWithImpl<_$ProjectStateImpl>(this, _$identity);
}

abstract class _ProjectState extends ProjectState {
  const factory _ProjectState(
      {required final ProjectVM projectVM,
      final ProjectAddStatus projectAddStatus,
      final ProjectUpdateStatus projectUpdateStatus,
      final ProjectLoadStatus projectLoadStatus}) = _$ProjectStateImpl;
  const _ProjectState._() : super._();

  @override
  ProjectVM get projectVM;
  @override
  ProjectAddStatus get projectAddStatus;
  @override
  ProjectUpdateStatus get projectUpdateStatus;
  @override
  ProjectLoadStatus get projectLoadStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectAddStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function()? added,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitial value) initial,
    required TResult Function(ProjectAdding value) adding,
    required TResult Function(ProjectAdded value) added,
    required TResult Function(ProjectAddError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitial value)? initial,
    TResult? Function(ProjectAdding value)? adding,
    TResult? Function(ProjectAdded value)? added,
    TResult? Function(ProjectAddError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitial value)? initial,
    TResult Function(ProjectAdding value)? adding,
    TResult Function(ProjectAdded value)? added,
    TResult Function(ProjectAddError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectAddStatusCopyWith<$Res> {
  factory $ProjectAddStatusCopyWith(
          ProjectAddStatus value, $Res Function(ProjectAddStatus) then) =
      _$ProjectAddStatusCopyWithImpl<$Res, ProjectAddStatus>;
}

/// @nodoc
class _$ProjectAddStatusCopyWithImpl<$Res, $Val extends ProjectAddStatus>
    implements $ProjectAddStatusCopyWith<$Res> {
  _$ProjectAddStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectInitialImplCopyWith<$Res> {
  factory _$$ProjectInitialImplCopyWith(_$ProjectInitialImpl value,
          $Res Function(_$ProjectInitialImpl) then) =
      __$$ProjectInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectInitialImplCopyWithImpl<$Res>
    extends _$ProjectAddStatusCopyWithImpl<$Res, _$ProjectInitialImpl>
    implements _$$ProjectInitialImplCopyWith<$Res> {
  __$$ProjectInitialImplCopyWithImpl(
      _$ProjectInitialImpl _value, $Res Function(_$ProjectInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectInitialImpl implements ProjectInitial {
  const _$ProjectInitialImpl();

  @override
  String toString() {
    return 'ProjectAddStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function()? added,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitial value) initial,
    required TResult Function(ProjectAdding value) adding,
    required TResult Function(ProjectAdded value) added,
    required TResult Function(ProjectAddError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitial value)? initial,
    TResult? Function(ProjectAdding value)? adding,
    TResult? Function(ProjectAdded value)? added,
    TResult? Function(ProjectAddError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitial value)? initial,
    TResult Function(ProjectAdding value)? adding,
    TResult Function(ProjectAdded value)? added,
    TResult Function(ProjectAddError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProjectInitial implements ProjectAddStatus {
  const factory ProjectInitial() = _$ProjectInitialImpl;
}

/// @nodoc
abstract class _$$ProjectAddingImplCopyWith<$Res> {
  factory _$$ProjectAddingImplCopyWith(
          _$ProjectAddingImpl value, $Res Function(_$ProjectAddingImpl) then) =
      __$$ProjectAddingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectAddingImplCopyWithImpl<$Res>
    extends _$ProjectAddStatusCopyWithImpl<$Res, _$ProjectAddingImpl>
    implements _$$ProjectAddingImplCopyWith<$Res> {
  __$$ProjectAddingImplCopyWithImpl(
      _$ProjectAddingImpl _value, $Res Function(_$ProjectAddingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectAddingImpl implements ProjectAdding {
  const _$ProjectAddingImpl();

  @override
  String toString() {
    return 'ProjectAddStatus.adding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectAddingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(String message) error,
  }) {
    return adding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function()? added,
    TResult? Function(String message)? error,
  }) {
    return adding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitial value) initial,
    required TResult Function(ProjectAdding value) adding,
    required TResult Function(ProjectAdded value) added,
    required TResult Function(ProjectAddError value) error,
  }) {
    return adding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitial value)? initial,
    TResult? Function(ProjectAdding value)? adding,
    TResult? Function(ProjectAdded value)? added,
    TResult? Function(ProjectAddError value)? error,
  }) {
    return adding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitial value)? initial,
    TResult Function(ProjectAdding value)? adding,
    TResult Function(ProjectAdded value)? added,
    TResult Function(ProjectAddError value)? error,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding(this);
    }
    return orElse();
  }
}

abstract class ProjectAdding implements ProjectAddStatus {
  const factory ProjectAdding() = _$ProjectAddingImpl;
}

/// @nodoc
abstract class _$$ProjectAddedImplCopyWith<$Res> {
  factory _$$ProjectAddedImplCopyWith(
          _$ProjectAddedImpl value, $Res Function(_$ProjectAddedImpl) then) =
      __$$ProjectAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectAddedImplCopyWithImpl<$Res>
    extends _$ProjectAddStatusCopyWithImpl<$Res, _$ProjectAddedImpl>
    implements _$$ProjectAddedImplCopyWith<$Res> {
  __$$ProjectAddedImplCopyWithImpl(
      _$ProjectAddedImpl _value, $Res Function(_$ProjectAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectAddedImpl implements ProjectAdded {
  const _$ProjectAddedImpl();

  @override
  String toString() {
    return 'ProjectAddStatus.added()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(String message) error,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function()? added,
    TResult? Function(String message)? error,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitial value) initial,
    required TResult Function(ProjectAdding value) adding,
    required TResult Function(ProjectAdded value) added,
    required TResult Function(ProjectAddError value) error,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitial value)? initial,
    TResult? Function(ProjectAdding value)? adding,
    TResult? Function(ProjectAdded value)? added,
    TResult? Function(ProjectAddError value)? error,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitial value)? initial,
    TResult Function(ProjectAdding value)? adding,
    TResult Function(ProjectAdded value)? added,
    TResult Function(ProjectAddError value)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class ProjectAdded implements ProjectAddStatus {
  const factory ProjectAdded() = _$ProjectAddedImpl;
}

/// @nodoc
abstract class _$$ProjectAddErrorImplCopyWith<$Res> {
  factory _$$ProjectAddErrorImplCopyWith(_$ProjectAddErrorImpl value,
          $Res Function(_$ProjectAddErrorImpl) then) =
      __$$ProjectAddErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProjectAddErrorImplCopyWithImpl<$Res>
    extends _$ProjectAddStatusCopyWithImpl<$Res, _$ProjectAddErrorImpl>
    implements _$$ProjectAddErrorImplCopyWith<$Res> {
  __$$ProjectAddErrorImplCopyWithImpl(
      _$ProjectAddErrorImpl _value, $Res Function(_$ProjectAddErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProjectAddErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectAddErrorImpl implements ProjectAddError {
  const _$ProjectAddErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectAddStatus.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectAddErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectAddErrorImplCopyWith<_$ProjectAddErrorImpl> get copyWith =>
      __$$ProjectAddErrorImplCopyWithImpl<_$ProjectAddErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function()? added,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectInitial value) initial,
    required TResult Function(ProjectAdding value) adding,
    required TResult Function(ProjectAdded value) added,
    required TResult Function(ProjectAddError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectInitial value)? initial,
    TResult? Function(ProjectAdding value)? adding,
    TResult? Function(ProjectAdded value)? added,
    TResult? Function(ProjectAddError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectInitial value)? initial,
    TResult Function(ProjectAdding value)? adding,
    TResult Function(ProjectAdded value)? added,
    TResult Function(ProjectAddError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProjectAddError implements ProjectAddStatus {
  const factory ProjectAddError(final String message) = _$ProjectAddErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProjectAddErrorImplCopyWith<_$ProjectAddErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectUpdateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUpdateInitial value) initial,
    required TResult Function(ProjectUpdating value) updating,
    required TResult Function(ProjectUpdated value) updated,
    required TResult Function(ProjectUpdateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUpdateInitial value)? initial,
    TResult? Function(ProjectUpdating value)? updating,
    TResult? Function(ProjectUpdated value)? updated,
    TResult? Function(ProjectUpdateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUpdateInitial value)? initial,
    TResult Function(ProjectUpdating value)? updating,
    TResult Function(ProjectUpdated value)? updated,
    TResult Function(ProjectUpdateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectUpdateStatusCopyWith<$Res> {
  factory $ProjectUpdateStatusCopyWith(
          ProjectUpdateStatus value, $Res Function(ProjectUpdateStatus) then) =
      _$ProjectUpdateStatusCopyWithImpl<$Res, ProjectUpdateStatus>;
}

/// @nodoc
class _$ProjectUpdateStatusCopyWithImpl<$Res, $Val extends ProjectUpdateStatus>
    implements $ProjectUpdateStatusCopyWith<$Res> {
  _$ProjectUpdateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectUpdateInitialImplCopyWith<$Res> {
  factory _$$ProjectUpdateInitialImplCopyWith(_$ProjectUpdateInitialImpl value,
          $Res Function(_$ProjectUpdateInitialImpl) then) =
      __$$ProjectUpdateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectUpdateInitialImplCopyWithImpl<$Res>
    extends _$ProjectUpdateStatusCopyWithImpl<$Res, _$ProjectUpdateInitialImpl>
    implements _$$ProjectUpdateInitialImplCopyWith<$Res> {
  __$$ProjectUpdateInitialImplCopyWithImpl(_$ProjectUpdateInitialImpl _value,
      $Res Function(_$ProjectUpdateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectUpdateInitialImpl implements ProjectUpdateInitial {
  const _$ProjectUpdateInitialImpl();

  @override
  String toString() {
    return 'ProjectUpdateStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectUpdateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUpdateInitial value) initial,
    required TResult Function(ProjectUpdating value) updating,
    required TResult Function(ProjectUpdated value) updated,
    required TResult Function(ProjectUpdateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUpdateInitial value)? initial,
    TResult? Function(ProjectUpdating value)? updating,
    TResult? Function(ProjectUpdated value)? updated,
    TResult? Function(ProjectUpdateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUpdateInitial value)? initial,
    TResult Function(ProjectUpdating value)? updating,
    TResult Function(ProjectUpdated value)? updated,
    TResult Function(ProjectUpdateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProjectUpdateInitial implements ProjectUpdateStatus {
  const factory ProjectUpdateInitial() = _$ProjectUpdateInitialImpl;
}

/// @nodoc
abstract class _$$ProjectUpdatingImplCopyWith<$Res> {
  factory _$$ProjectUpdatingImplCopyWith(_$ProjectUpdatingImpl value,
          $Res Function(_$ProjectUpdatingImpl) then) =
      __$$ProjectUpdatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectUpdatingImplCopyWithImpl<$Res>
    extends _$ProjectUpdateStatusCopyWithImpl<$Res, _$ProjectUpdatingImpl>
    implements _$$ProjectUpdatingImplCopyWith<$Res> {
  __$$ProjectUpdatingImplCopyWithImpl(
      _$ProjectUpdatingImpl _value, $Res Function(_$ProjectUpdatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectUpdatingImpl implements ProjectUpdating {
  const _$ProjectUpdatingImpl();

  @override
  String toString() {
    return 'ProjectUpdateStatus.updating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectUpdatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return updating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return updating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUpdateInitial value) initial,
    required TResult Function(ProjectUpdating value) updating,
    required TResult Function(ProjectUpdated value) updated,
    required TResult Function(ProjectUpdateError value) error,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUpdateInitial value)? initial,
    TResult? Function(ProjectUpdating value)? updating,
    TResult? Function(ProjectUpdated value)? updated,
    TResult? Function(ProjectUpdateError value)? error,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUpdateInitial value)? initial,
    TResult Function(ProjectUpdating value)? updating,
    TResult Function(ProjectUpdated value)? updated,
    TResult Function(ProjectUpdateError value)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class ProjectUpdating implements ProjectUpdateStatus {
  const factory ProjectUpdating() = _$ProjectUpdatingImpl;
}

/// @nodoc
abstract class _$$ProjectUpdatedImplCopyWith<$Res> {
  factory _$$ProjectUpdatedImplCopyWith(_$ProjectUpdatedImpl value,
          $Res Function(_$ProjectUpdatedImpl) then) =
      __$$ProjectUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectUpdatedImplCopyWithImpl<$Res>
    extends _$ProjectUpdateStatusCopyWithImpl<$Res, _$ProjectUpdatedImpl>
    implements _$$ProjectUpdatedImplCopyWith<$Res> {
  __$$ProjectUpdatedImplCopyWithImpl(
      _$ProjectUpdatedImpl _value, $Res Function(_$ProjectUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectUpdatedImpl implements ProjectUpdated {
  const _$ProjectUpdatedImpl();

  @override
  String toString() {
    return 'ProjectUpdateStatus.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUpdateInitial value) initial,
    required TResult Function(ProjectUpdating value) updating,
    required TResult Function(ProjectUpdated value) updated,
    required TResult Function(ProjectUpdateError value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUpdateInitial value)? initial,
    TResult? Function(ProjectUpdating value)? updating,
    TResult? Function(ProjectUpdated value)? updated,
    TResult? Function(ProjectUpdateError value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUpdateInitial value)? initial,
    TResult Function(ProjectUpdating value)? updating,
    TResult Function(ProjectUpdated value)? updated,
    TResult Function(ProjectUpdateError value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class ProjectUpdated implements ProjectUpdateStatus {
  const factory ProjectUpdated() = _$ProjectUpdatedImpl;
}

/// @nodoc
abstract class _$$ProjectUpdateErrorImplCopyWith<$Res> {
  factory _$$ProjectUpdateErrorImplCopyWith(_$ProjectUpdateErrorImpl value,
          $Res Function(_$ProjectUpdateErrorImpl) then) =
      __$$ProjectUpdateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProjectUpdateErrorImplCopyWithImpl<$Res>
    extends _$ProjectUpdateStatusCopyWithImpl<$Res, _$ProjectUpdateErrorImpl>
    implements _$$ProjectUpdateErrorImplCopyWith<$Res> {
  __$$ProjectUpdateErrorImplCopyWithImpl(_$ProjectUpdateErrorImpl _value,
      $Res Function(_$ProjectUpdateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProjectUpdateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectUpdateErrorImpl implements ProjectUpdateError {
  const _$ProjectUpdateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectUpdateStatus.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectUpdateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectUpdateErrorImplCopyWith<_$ProjectUpdateErrorImpl> get copyWith =>
      __$$ProjectUpdateErrorImplCopyWithImpl<_$ProjectUpdateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectUpdateInitial value) initial,
    required TResult Function(ProjectUpdating value) updating,
    required TResult Function(ProjectUpdated value) updated,
    required TResult Function(ProjectUpdateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectUpdateInitial value)? initial,
    TResult? Function(ProjectUpdating value)? updating,
    TResult? Function(ProjectUpdated value)? updated,
    TResult? Function(ProjectUpdateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectUpdateInitial value)? initial,
    TResult Function(ProjectUpdating value)? updating,
    TResult Function(ProjectUpdated value)? updated,
    TResult Function(ProjectUpdateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProjectUpdateError implements ProjectUpdateStatus {
  const factory ProjectUpdateError(final String message) =
      _$ProjectUpdateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProjectUpdateErrorImplCopyWith<_$ProjectUpdateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectLoadStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectLoadInitial value) initial,
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectLoadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectLoadInitial value)? initial,
    TResult? Function(ProjectLoading value)? loading,
    TResult? Function(ProjectLoaded value)? loaded,
    TResult? Function(ProjectLoadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectLoadInitial value)? initial,
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectLoadError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectLoadStatusCopyWith<$Res> {
  factory $ProjectLoadStatusCopyWith(
          ProjectLoadStatus value, $Res Function(ProjectLoadStatus) then) =
      _$ProjectLoadStatusCopyWithImpl<$Res, ProjectLoadStatus>;
}

/// @nodoc
class _$ProjectLoadStatusCopyWithImpl<$Res, $Val extends ProjectLoadStatus>
    implements $ProjectLoadStatusCopyWith<$Res> {
  _$ProjectLoadStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectLoadInitialImplCopyWith<$Res> {
  factory _$$ProjectLoadInitialImplCopyWith(_$ProjectLoadInitialImpl value,
          $Res Function(_$ProjectLoadInitialImpl) then) =
      __$$ProjectLoadInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectLoadInitialImplCopyWithImpl<$Res>
    extends _$ProjectLoadStatusCopyWithImpl<$Res, _$ProjectLoadInitialImpl>
    implements _$$ProjectLoadInitialImplCopyWith<$Res> {
  __$$ProjectLoadInitialImplCopyWithImpl(_$ProjectLoadInitialImpl _value,
      $Res Function(_$ProjectLoadInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectLoadInitialImpl implements ProjectLoadInitial {
  const _$ProjectLoadInitialImpl();

  @override
  String toString() {
    return 'ProjectLoadStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectLoadInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectLoadInitial value) initial,
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectLoadError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectLoadInitial value)? initial,
    TResult? Function(ProjectLoading value)? loading,
    TResult? Function(ProjectLoaded value)? loaded,
    TResult? Function(ProjectLoadError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectLoadInitial value)? initial,
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectLoadError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProjectLoadInitial implements ProjectLoadStatus {
  const factory ProjectLoadInitial() = _$ProjectLoadInitialImpl;
}

/// @nodoc
abstract class _$$ProjectLoadingImplCopyWith<$Res> {
  factory _$$ProjectLoadingImplCopyWith(_$ProjectLoadingImpl value,
          $Res Function(_$ProjectLoadingImpl) then) =
      __$$ProjectLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectLoadingImplCopyWithImpl<$Res>
    extends _$ProjectLoadStatusCopyWithImpl<$Res, _$ProjectLoadingImpl>
    implements _$$ProjectLoadingImplCopyWith<$Res> {
  __$$ProjectLoadingImplCopyWithImpl(
      _$ProjectLoadingImpl _value, $Res Function(_$ProjectLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectLoadingImpl implements ProjectLoading {
  const _$ProjectLoadingImpl();

  @override
  String toString() {
    return 'ProjectLoadStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectLoadInitial value) initial,
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectLoadError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectLoadInitial value)? initial,
    TResult? Function(ProjectLoading value)? loading,
    TResult? Function(ProjectLoaded value)? loaded,
    TResult? Function(ProjectLoadError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectLoadInitial value)? initial,
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectLoadError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProjectLoading implements ProjectLoadStatus {
  const factory ProjectLoading() = _$ProjectLoadingImpl;
}

/// @nodoc
abstract class _$$ProjectLoadedImplCopyWith<$Res> {
  factory _$$ProjectLoadedImplCopyWith(
          _$ProjectLoadedImpl value, $Res Function(_$ProjectLoadedImpl) then) =
      __$$ProjectLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectLoadedImplCopyWithImpl<$Res>
    extends _$ProjectLoadStatusCopyWithImpl<$Res, _$ProjectLoadedImpl>
    implements _$$ProjectLoadedImplCopyWith<$Res> {
  __$$ProjectLoadedImplCopyWithImpl(
      _$ProjectLoadedImpl _value, $Res Function(_$ProjectLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectLoadedImpl implements ProjectLoaded {
  const _$ProjectLoadedImpl();

  @override
  String toString() {
    return 'ProjectLoadStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectLoadInitial value) initial,
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectLoadError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectLoadInitial value)? initial,
    TResult? Function(ProjectLoading value)? loading,
    TResult? Function(ProjectLoaded value)? loaded,
    TResult? Function(ProjectLoadError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectLoadInitial value)? initial,
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectLoadError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProjectLoaded implements ProjectLoadStatus {
  const factory ProjectLoaded() = _$ProjectLoadedImpl;
}

/// @nodoc
abstract class _$$ProjectLoadErrorImplCopyWith<$Res> {
  factory _$$ProjectLoadErrorImplCopyWith(_$ProjectLoadErrorImpl value,
          $Res Function(_$ProjectLoadErrorImpl) then) =
      __$$ProjectLoadErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProjectLoadErrorImplCopyWithImpl<$Res>
    extends _$ProjectLoadStatusCopyWithImpl<$Res, _$ProjectLoadErrorImpl>
    implements _$$ProjectLoadErrorImplCopyWith<$Res> {
  __$$ProjectLoadErrorImplCopyWithImpl(_$ProjectLoadErrorImpl _value,
      $Res Function(_$ProjectLoadErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProjectLoadErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectLoadErrorImpl implements ProjectLoadError {
  const _$ProjectLoadErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectLoadStatus.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectLoadErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectLoadErrorImplCopyWith<_$ProjectLoadErrorImpl> get copyWith =>
      __$$ProjectLoadErrorImplCopyWithImpl<_$ProjectLoadErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectLoadInitial value) initial,
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectLoadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectLoadInitial value)? initial,
    TResult? Function(ProjectLoading value)? loading,
    TResult? Function(ProjectLoaded value)? loaded,
    TResult? Function(ProjectLoadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectLoadInitial value)? initial,
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectLoadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProjectLoadError implements ProjectLoadStatus {
  const factory ProjectLoadError(final String message) = _$ProjectLoadErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProjectLoadErrorImplCopyWith<_$ProjectLoadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
