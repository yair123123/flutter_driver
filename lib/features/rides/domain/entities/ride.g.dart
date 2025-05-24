// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideImpl _$$RideImplFromJson(Map<String, dynamic> json) => _$RideImpl(
  id: json['id'] as String,
  details: json['details'] as String,
  dispatcherId: json['dispatcherId'] as String,
  stationId: json['stationId'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$$RideImplToJson(_$RideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
      'dispatcherId': instance.dispatcherId,
      'stationId': instance.stationId,
      'timestamp': instance.timestamp.toIso8601String(),
    };
