// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String,
  username: json['username'] as String,
  jwt: json['jwt'] as String,
  gender: json['gender'] as String,
  relationsStation:
      (json['relationsStation'] as List<dynamic>)
          .map((e) => RelationStation.fromJson(e as Map<String, dynamic>))
          .toList(),
  rate: (json['rate'] as num).toDouble(),
  sumRides: (json['sumRides'] as num).toInt(),
  isDispatcher: json['isDispatcher'] as bool,
  stationDispatch: Station.fromJson(
    json['stationDispatch'] as Map<String, dynamic>,
  ),
  status: json['status'] as bool,
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'jwt': instance.jwt,
      'gender': instance.gender,
      'relationsStation': instance.relationsStation,
      'rate': instance.rate,
      'sumRides': instance.sumRides,
      'isDispatcher': instance.isDispatcher,
      'stationDispatch': instance.stationDispatch,
      'status': instance.status,
    };
