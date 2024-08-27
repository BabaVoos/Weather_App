// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() currentWeatherDataloading,
    required TResult Function(
            CurrentWeatherDataResponse? currentWeatherDataResponse)
        currentWeatherDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel)
        currentWeatherDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? currentWeatherDataloading,
    TResult Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CurrentWeatherDataloading<T> value)
        currentWeatherDataloading,
    required TResult Function(CurrentWeatherDataSuccess<T> value)
        currentWeatherDataSuccess,
    required TResult Function(CurrentWeatherDataError<T> value)
        currentWeatherDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult? Function(CurrentWeatherDataError<T> value)?
        currentWeatherDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult Function(CurrentWeatherDataError<T> value)? currentWeatherDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() currentWeatherDataloading,
    required TResult Function(
            CurrentWeatherDataResponse? currentWeatherDataResponse)
        currentWeatherDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel)
        currentWeatherDataError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? currentWeatherDataloading,
    TResult Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CurrentWeatherDataloading<T> value)
        currentWeatherDataloading,
    required TResult Function(CurrentWeatherDataSuccess<T> value)
        currentWeatherDataSuccess,
    required TResult Function(CurrentWeatherDataError<T> value)
        currentWeatherDataError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult? Function(CurrentWeatherDataError<T> value)?
        currentWeatherDataError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult Function(CurrentWeatherDataError<T> value)? currentWeatherDataError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$CurrentWeatherDataloadingImplCopyWith<T, $Res> {
  factory _$$CurrentWeatherDataloadingImplCopyWith(
          _$CurrentWeatherDataloadingImpl<T> value,
          $Res Function(_$CurrentWeatherDataloadingImpl<T>) then) =
      __$$CurrentWeatherDataloadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CurrentWeatherDataloadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$CurrentWeatherDataloadingImpl<T>>
    implements _$$CurrentWeatherDataloadingImplCopyWith<T, $Res> {
  __$$CurrentWeatherDataloadingImplCopyWithImpl(
      _$CurrentWeatherDataloadingImpl<T> _value,
      $Res Function(_$CurrentWeatherDataloadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CurrentWeatherDataloadingImpl<T>
    implements CurrentWeatherDataloading<T> {
  const _$CurrentWeatherDataloadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.currentWeatherDataloading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDataloadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() currentWeatherDataloading,
    required TResult Function(
            CurrentWeatherDataResponse? currentWeatherDataResponse)
        currentWeatherDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel)
        currentWeatherDataError,
  }) {
    return currentWeatherDataloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
  }) {
    return currentWeatherDataloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? currentWeatherDataloading,
    TResult Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
    required TResult orElse(),
  }) {
    if (currentWeatherDataloading != null) {
      return currentWeatherDataloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CurrentWeatherDataloading<T> value)
        currentWeatherDataloading,
    required TResult Function(CurrentWeatherDataSuccess<T> value)
        currentWeatherDataSuccess,
    required TResult Function(CurrentWeatherDataError<T> value)
        currentWeatherDataError,
  }) {
    return currentWeatherDataloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult? Function(CurrentWeatherDataError<T> value)?
        currentWeatherDataError,
  }) {
    return currentWeatherDataloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult Function(CurrentWeatherDataError<T> value)? currentWeatherDataError,
    required TResult orElse(),
  }) {
    if (currentWeatherDataloading != null) {
      return currentWeatherDataloading(this);
    }
    return orElse();
  }
}

abstract class CurrentWeatherDataloading<T> implements HomeState<T> {
  const factory CurrentWeatherDataloading() =
      _$CurrentWeatherDataloadingImpl<T>;
}

/// @nodoc
abstract class _$$CurrentWeatherDataSuccessImplCopyWith<T, $Res> {
  factory _$$CurrentWeatherDataSuccessImplCopyWith(
          _$CurrentWeatherDataSuccessImpl<T> value,
          $Res Function(_$CurrentWeatherDataSuccessImpl<T>) then) =
      __$$CurrentWeatherDataSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CurrentWeatherDataResponse? currentWeatherDataResponse});
}

/// @nodoc
class __$$CurrentWeatherDataSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$CurrentWeatherDataSuccessImpl<T>>
    implements _$$CurrentWeatherDataSuccessImplCopyWith<T, $Res> {
  __$$CurrentWeatherDataSuccessImplCopyWithImpl(
      _$CurrentWeatherDataSuccessImpl<T> _value,
      $Res Function(_$CurrentWeatherDataSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeatherDataResponse = freezed,
  }) {
    return _then(_$CurrentWeatherDataSuccessImpl<T>(
      currentWeatherDataResponse: freezed == currentWeatherDataResponse
          ? _value.currentWeatherDataResponse
          : currentWeatherDataResponse // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherDataResponse?,
    ));
  }
}

/// @nodoc

class _$CurrentWeatherDataSuccessImpl<T>
    implements CurrentWeatherDataSuccess<T> {
  const _$CurrentWeatherDataSuccessImpl({this.currentWeatherDataResponse});

  @override
  final CurrentWeatherDataResponse? currentWeatherDataResponse;

  @override
  String toString() {
    return 'HomeState<$T>.currentWeatherDataSuccess(currentWeatherDataResponse: $currentWeatherDataResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDataSuccessImpl<T> &&
            (identical(other.currentWeatherDataResponse,
                    currentWeatherDataResponse) ||
                other.currentWeatherDataResponse ==
                    currentWeatherDataResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWeatherDataResponse);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherDataSuccessImplCopyWith<T,
          _$CurrentWeatherDataSuccessImpl<T>>
      get copyWith => __$$CurrentWeatherDataSuccessImplCopyWithImpl<T,
          _$CurrentWeatherDataSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() currentWeatherDataloading,
    required TResult Function(
            CurrentWeatherDataResponse? currentWeatherDataResponse)
        currentWeatherDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel)
        currentWeatherDataError,
  }) {
    return currentWeatherDataSuccess(currentWeatherDataResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
  }) {
    return currentWeatherDataSuccess?.call(currentWeatherDataResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? currentWeatherDataloading,
    TResult Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
    required TResult orElse(),
  }) {
    if (currentWeatherDataSuccess != null) {
      return currentWeatherDataSuccess(currentWeatherDataResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CurrentWeatherDataloading<T> value)
        currentWeatherDataloading,
    required TResult Function(CurrentWeatherDataSuccess<T> value)
        currentWeatherDataSuccess,
    required TResult Function(CurrentWeatherDataError<T> value)
        currentWeatherDataError,
  }) {
    return currentWeatherDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult? Function(CurrentWeatherDataError<T> value)?
        currentWeatherDataError,
  }) {
    return currentWeatherDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult Function(CurrentWeatherDataError<T> value)? currentWeatherDataError,
    required TResult orElse(),
  }) {
    if (currentWeatherDataSuccess != null) {
      return currentWeatherDataSuccess(this);
    }
    return orElse();
  }
}

abstract class CurrentWeatherDataSuccess<T> implements HomeState<T> {
  const factory CurrentWeatherDataSuccess(
          {final CurrentWeatherDataResponse? currentWeatherDataResponse}) =
      _$CurrentWeatherDataSuccessImpl<T>;

  CurrentWeatherDataResponse? get currentWeatherDataResponse;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentWeatherDataSuccessImplCopyWith<T,
          _$CurrentWeatherDataSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentWeatherDataErrorImplCopyWith<T, $Res> {
  factory _$$CurrentWeatherDataErrorImplCopyWith(
          _$CurrentWeatherDataErrorImpl<T> value,
          $Res Function(_$CurrentWeatherDataErrorImpl<T>) then) =
      __$$CurrentWeatherDataErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$CurrentWeatherDataErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$CurrentWeatherDataErrorImpl<T>>
    implements _$$CurrentWeatherDataErrorImplCopyWith<T, $Res> {
  __$$CurrentWeatherDataErrorImplCopyWithImpl(
      _$CurrentWeatherDataErrorImpl<T> _value,
      $Res Function(_$CurrentWeatherDataErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$CurrentWeatherDataErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$CurrentWeatherDataErrorImpl<T> implements CurrentWeatherDataError<T> {
  const _$CurrentWeatherDataErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'HomeState<$T>.currentWeatherDataError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDataErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherDataErrorImplCopyWith<T, _$CurrentWeatherDataErrorImpl<T>>
      get copyWith => __$$CurrentWeatherDataErrorImplCopyWithImpl<T,
          _$CurrentWeatherDataErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() currentWeatherDataloading,
    required TResult Function(
            CurrentWeatherDataResponse? currentWeatherDataResponse)
        currentWeatherDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel)
        currentWeatherDataError,
  }) {
    return currentWeatherDataError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
  }) {
    return currentWeatherDataError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? currentWeatherDataloading,
    TResult Function(CurrentWeatherDataResponse? currentWeatherDataResponse)?
        currentWeatherDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? currentWeatherDataError,
    required TResult orElse(),
  }) {
    if (currentWeatherDataError != null) {
      return currentWeatherDataError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CurrentWeatherDataloading<T> value)
        currentWeatherDataloading,
    required TResult Function(CurrentWeatherDataSuccess<T> value)
        currentWeatherDataSuccess,
    required TResult Function(CurrentWeatherDataError<T> value)
        currentWeatherDataError,
  }) {
    return currentWeatherDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult? Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult? Function(CurrentWeatherDataError<T> value)?
        currentWeatherDataError,
  }) {
    return currentWeatherDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CurrentWeatherDataloading<T> value)?
        currentWeatherDataloading,
    TResult Function(CurrentWeatherDataSuccess<T> value)?
        currentWeatherDataSuccess,
    TResult Function(CurrentWeatherDataError<T> value)? currentWeatherDataError,
    required TResult orElse(),
  }) {
    if (currentWeatherDataError != null) {
      return currentWeatherDataError(this);
    }
    return orElse();
  }
}

abstract class CurrentWeatherDataError<T> implements HomeState<T> {
  const factory CurrentWeatherDataError(final ApiErrorModel apiErrorModel) =
      _$CurrentWeatherDataErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentWeatherDataErrorImplCopyWith<T, _$CurrentWeatherDataErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
