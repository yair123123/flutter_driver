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

HttpDto _$HttpDtoFromJson(Map<String, dynamic> json) {
  return _HttpDto.fromJson(json);
}

/// @nodoc
mixin _$HttpDto {
  dynamic get content => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this HttpDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpDtoCopyWith<HttpDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpDtoCopyWith<$Res> {
  factory $HttpDtoCopyWith(HttpDto value, $Res Function(HttpDto) then) =
      _$HttpDtoCopyWithImpl<$Res, HttpDto>;
  @useResult
  $Res call({dynamic content, bool success, String error});
}

/// @nodoc
class _$HttpDtoCopyWithImpl<$Res, $Val extends HttpDto>
    implements $HttpDtoCopyWith<$Res> {
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
                        as dynamic,
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
abstract class _$$HttpDtoImplCopyWith<$Res> implements $HttpDtoCopyWith<$Res> {
  factory _$$HttpDtoImplCopyWith(
    _$HttpDtoImpl value,
    $Res Function(_$HttpDtoImpl) then,
  ) = __$$HttpDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic content, bool success, String error});
}

/// @nodoc
class __$$HttpDtoImplCopyWithImpl<$Res>
    extends _$HttpDtoCopyWithImpl<$Res, _$HttpDtoImpl>
    implements _$$HttpDtoImplCopyWith<$Res> {
  __$$HttpDtoImplCopyWithImpl(
    _$HttpDtoImpl _value,
    $Res Function(_$HttpDtoImpl) _then,
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
      _$HttpDtoImpl(
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as dynamic,
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
@JsonSerializable()
class _$HttpDtoImpl implements _HttpDto {
  const _$HttpDtoImpl({
    this.content,
    required this.success,
    required this.error,
  });

  factory _$HttpDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpDtoImplFromJson(json);

  @override
  final dynamic content;
  @override
  final bool success;
  @override
  final String error;

  @override
  String toString() {
    return 'HttpDto(content: $content, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpDtoImpl &&
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
  _$$HttpDtoImplCopyWith<_$HttpDtoImpl> get copyWith =>
      __$$HttpDtoImplCopyWithImpl<_$HttpDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpDtoImplToJson(this);
  }
}

abstract class _HttpDto implements HttpDto {
  const factory _HttpDto({
    final dynamic content,
    required final bool success,
    required final String error,
  }) = _$HttpDtoImpl;

  factory _HttpDto.fromJson(Map<String, dynamic> json) = _$HttpDtoImpl.fromJson;

  @override
  dynamic get content;
  @override
  bool get success;
  @override
  String get error;

  /// Create a copy of HttpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpDtoImplCopyWith<_$HttpDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
