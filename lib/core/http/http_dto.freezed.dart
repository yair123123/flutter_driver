// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HttpDto<T> _$HttpDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _HttpDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$HttpDto<T> {
  T get content => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this HttpDto to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HttpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpDtoCopyWith<T, HttpDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpDtoCopyWith<T, $Res> {
  factory $HttpDtoCopyWith(HttpDto<T> value, $Res Function(HttpDto<T>) then) =
      _$HttpDtoCopyWithImpl<T, $Res, HttpDto<T>>;
  @useResult
  $Res call({T content, bool success, String error});
}

/// @nodoc
class _$HttpDtoCopyWithImpl<T, $Res, $Val extends HttpDto<T>>
    implements $HttpDtoCopyWith<T, $Res> {
  _$HttpDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(
      _value.copyWith(
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as T,
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HttpDtoImplCopyWith<T, $Res>
    implements $HttpDtoCopyWith<T, $Res> {
  factory _$$HttpDtoImplCopyWith(
    _$HttpDtoImpl<T> value,
    $Res Function(_$HttpDtoImpl<T>) then,
  ) = __$$HttpDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T content, bool success, String error});
}

/// @nodoc
class __$$HttpDtoImplCopyWithImpl<T, $Res>
    extends _$HttpDtoCopyWithImpl<T, $Res, _$HttpDtoImpl<T>>
    implements _$$HttpDtoImplCopyWith<T, $Res> {
  __$$HttpDtoImplCopyWithImpl(
    _$HttpDtoImpl<T> _value,
    $Res Function(_$HttpDtoImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of HttpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(
      _$HttpDtoImpl<T>(
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as T,
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$HttpDtoImpl<T> implements _HttpDto<T> {
  const _$HttpDtoImpl({
    required this.content,
    required this.success,
    required this.error,
  });

  factory _$HttpDtoImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$HttpDtoImplFromJson(json, fromJsonT);

  @override
  final T content;
  @override
  final bool success;
  @override
  final String error;

  @override
  String toString() {
    return 'HttpDto<$T>(content: $content, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpDtoImpl<T> &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(content),
    success,
    error,
  );

  /// Create a copy of HttpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpDtoImplCopyWith<T, _$HttpDtoImpl<T>> get copyWith =>
      __$$HttpDtoImplCopyWithImpl<T, _$HttpDtoImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$HttpDtoImplToJson<T>(this, toJsonT);
  }
}

abstract class _HttpDto<T> implements HttpDto<T> {
  const factory _HttpDto({
    required final T content,
    required final bool success,
    required final String error,
  }) = _$HttpDtoImpl<T>;

  factory _HttpDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$HttpDtoImpl<T>.fromJson;

  @override
  T get content;
  @override
  bool get success;
  @override
  String get error;

  /// Create a copy of HttpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpDtoImplCopyWith<T, _$HttpDtoImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
