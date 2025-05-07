// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  int get station_id => throw _privateConstructorUsedError;
  String get station_name => throw _privateConstructorUsedError;
  String get driver_status => throw _privateConstructorUsedError;
  bool get is_dispatcher => throw _privateConstructorUsedError;

  /// Serializes this Station to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call({
    int station_id,
    String station_name,
    String driver_status,
    bool is_dispatcher,
  });
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_id = null,
    Object? station_name = null,
    Object? driver_status = null,
    Object? is_dispatcher = null,
  }) {
    return _then(
      _value.copyWith(
            station_id:
                null == station_id
                    ? _value.station_id
                    : station_id // ignore: cast_nullable_to_non_nullable
                        as int,
            station_name:
                null == station_name
                    ? _value.station_name
                    : station_name // ignore: cast_nullable_to_non_nullable
                        as String,
            driver_status:
                null == driver_status
                    ? _value.driver_status
                    : driver_status // ignore: cast_nullable_to_non_nullable
                        as String,
            is_dispatcher:
                null == is_dispatcher
                    ? _value.is_dispatcher
                    : is_dispatcher // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StationImplCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$StationImplCopyWith(
    _$StationImpl value,
    $Res Function(_$StationImpl) then,
  ) = __$$StationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int station_id,
    String station_name,
    String driver_status,
    bool is_dispatcher,
  });
}

/// @nodoc
class __$$StationImplCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$StationImpl>
    implements _$$StationImplCopyWith<$Res> {
  __$$StationImplCopyWithImpl(
    _$StationImpl _value,
    $Res Function(_$StationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_id = null,
    Object? station_name = null,
    Object? driver_status = null,
    Object? is_dispatcher = null,
  }) {
    return _then(
      _$StationImpl(
        station_id:
            null == station_id
                ? _value.station_id
                : station_id // ignore: cast_nullable_to_non_nullable
                    as int,
        station_name:
            null == station_name
                ? _value.station_name
                : station_name // ignore: cast_nullable_to_non_nullable
                    as String,
        driver_status:
            null == driver_status
                ? _value.driver_status
                : driver_status // ignore: cast_nullable_to_non_nullable
                    as String,
        is_dispatcher:
            null == is_dispatcher
                ? _value.is_dispatcher
                : is_dispatcher // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StationImpl implements _Station {
  const _$StationImpl({
    required this.station_id,
    required this.station_name,
    required this.driver_status,
    required this.is_dispatcher,
  });

  factory _$StationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationImplFromJson(json);

  @override
  final int station_id;
  @override
  final String station_name;
  @override
  final String driver_status;
  @override
  final bool is_dispatcher;

  @override
  String toString() {
    return 'Station(station_id: $station_id, station_name: $station_name, driver_status: $driver_status, is_dispatcher: $is_dispatcher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationImpl &&
            (identical(other.station_id, station_id) ||
                other.station_id == station_id) &&
            (identical(other.station_name, station_name) ||
                other.station_name == station_name) &&
            (identical(other.driver_status, driver_status) ||
                other.driver_status == driver_status) &&
            (identical(other.is_dispatcher, is_dispatcher) ||
                other.is_dispatcher == is_dispatcher));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    station_id,
    station_name,
    driver_status,
    is_dispatcher,
  );

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      __$$StationImplCopyWithImpl<_$StationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationImplToJson(this);
  }
}

abstract class _Station implements Station {
  const factory _Station({
    required final int station_id,
    required final String station_name,
    required final String driver_status,
    required final bool is_dispatcher,
  }) = _$StationImpl;

  factory _Station.fromJson(Map<String, dynamic> json) = _$StationImpl.fromJson;

  @override
  int get station_id;
  @override
  String get station_name;
  @override
  String get driver_status;
  @override
  bool get is_dispatcher;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
