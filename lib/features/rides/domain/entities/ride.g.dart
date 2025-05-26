// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideImpl _$$RideImplFromJson(Map<String, dynamic> json) => _$RideImpl(
  id: (json['id'] as num).toInt(),
  stationId: (json['stationId'] as num).toInt(),
  dispatcherId: (json['dispatcherId'] as num).toInt(),
  timestamp: DateTime.parse(json['timestamp'] as String),
  details: json['details'] as String,
);

Map<String, dynamic> _$$RideImplToJson(_$RideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stationId': instance.stationId,
      'dispatcherId': instance.dispatcherId,
      'timestamp': instance.timestamp.toIso8601String(),
      'details': instance.details,
    };
