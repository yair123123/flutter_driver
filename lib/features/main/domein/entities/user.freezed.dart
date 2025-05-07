// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  List<RelationStation> get relationsStation =>
      throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  int get sumRides => throw _privateConstructorUsedError;
  bool get isDispatcher => throw _privateConstructorUsedError;
  Station get stationDispatch => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    String id,
    String username,
    String jwt,
    String gender,
    List<RelationStation> relationsStation,
    double rate,
    int sumRides,
    bool isDispatcher,
    Station stationDispatch,
    bool status,
  });

  $StationCopyWith<$Res> get stationDispatch;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? jwt = null,
    Object? gender = null,
    Object? relationsStation = null,
    Object? rate = null,
    Object? sumRides = null,
    Object? isDispatcher = null,
    Object? stationDispatch = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            username:
                null == username
                    ? _value.username
                    : username // ignore: cast_nullable_to_non_nullable
                        as String,
            jwt:
                null == jwt
                    ? _value.jwt
                    : jwt // ignore: cast_nullable_to_non_nullable
                        as String,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String,
            relationsStation:
                null == relationsStation
                    ? _value.relationsStation
                    : relationsStation // ignore: cast_nullable_to_non_nullable
                        as List<RelationStation>,
            rate:
                null == rate
                    ? _value.rate
                    : rate // ignore: cast_nullable_to_non_nullable
                        as double,
            sumRides:
                null == sumRides
                    ? _value.sumRides
                    : sumRides // ignore: cast_nullable_to_non_nullable
                        as int,
            isDispatcher:
                null == isDispatcher
                    ? _value.isDispatcher
                    : isDispatcher // ignore: cast_nullable_to_non_nullable
                        as bool,
            stationDispatch:
                null == stationDispatch
                    ? _value.stationDispatch
                    : stationDispatch // ignore: cast_nullable_to_non_nullable
                        as Station,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res> get stationDispatch {
    return $StationCopyWith<$Res>(_value.stationDispatch, (value) {
      return _then(_value.copyWith(stationDispatch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String username,
    String jwt,
    String gender,
    List<RelationStation> relationsStation,
    double rate,
    int sumRides,
    bool isDispatcher,
    Station stationDispatch,
    bool status,
  });

  @override
  $StationCopyWith<$Res> get stationDispatch;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? jwt = null,
    Object? gender = null,
    Object? relationsStation = null,
    Object? rate = null,
    Object? sumRides = null,
    Object? isDispatcher = null,
    Object? stationDispatch = null,
    Object? status = null,
  }) {
    return _then(
      _$UserImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        jwt:
            null == jwt
                ? _value.jwt
                : jwt // ignore: cast_nullable_to_non_nullable
                    as String,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String,
        relationsStation:
            null == relationsStation
                ? _value._relationsStation
                : relationsStation // ignore: cast_nullable_to_non_nullable
                    as List<RelationStation>,
        rate:
            null == rate
                ? _value.rate
                : rate // ignore: cast_nullable_to_non_nullable
                    as double,
        sumRides:
            null == sumRides
                ? _value.sumRides
                : sumRides // ignore: cast_nullable_to_non_nullable
                    as int,
        isDispatcher:
            null == isDispatcher
                ? _value.isDispatcher
                : isDispatcher // ignore: cast_nullable_to_non_nullable
                    as bool,
        stationDispatch:
            null == stationDispatch
                ? _value.stationDispatch
                : stationDispatch // ignore: cast_nullable_to_non_nullable
                    as Station,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    required this.username,
    required this.jwt,
    required this.gender,
    required final List<RelationStation> relationsStation,
    required this.rate,
    required this.sumRides,
    required this.isDispatcher,
    required this.stationDispatch,
    required this.status,
  }) : _relationsStation = relationsStation;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String jwt;
  @override
  final String gender;
  final List<RelationStation> _relationsStation;
  @override
  List<RelationStation> get relationsStation {
    if (_relationsStation is EqualUnmodifiableListView)
      return _relationsStation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relationsStation);
  }

  @override
  final double rate;
  @override
  final int sumRides;
  @override
  final bool isDispatcher;
  @override
  final Station stationDispatch;
  @override
  final bool status;

  @override
  String toString() {
    return 'User(id: $id, username: $username, jwt: $jwt, gender: $gender, relationsStation: $relationsStation, rate: $rate, sumRides: $sumRides, isDispatcher: $isDispatcher, stationDispatch: $stationDispatch, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(
              other._relationsStation,
              _relationsStation,
            ) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.sumRides, sumRides) ||
                other.sumRides == sumRides) &&
            (identical(other.isDispatcher, isDispatcher) ||
                other.isDispatcher == isDispatcher) &&
            (identical(other.stationDispatch, stationDispatch) ||
                other.stationDispatch == stationDispatch) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    username,
    jwt,
    gender,
    const DeepCollectionEquality().hash(_relationsStation),
    rate,
    sumRides,
    isDispatcher,
    stationDispatch,
    status,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final String id,
    required final String username,
    required final String jwt,
    required final String gender,
    required final List<RelationStation> relationsStation,
    required final double rate,
    required final int sumRides,
    required final bool isDispatcher,
    required final Station stationDispatch,
    required final bool status,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get jwt;
  @override
  String get gender;
  @override
  List<RelationStation> get relationsStation;
  @override
  double get rate;
  @override
  int get sumRides;
  @override
  bool get isDispatcher;
  @override
  Station get stationDispatch;
  @override
  bool get status;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
