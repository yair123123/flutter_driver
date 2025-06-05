// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispatch_ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DispatchRideImpl _$$DispatchRideImplFromJson(Map<String, dynamic> json) =>
    _$DispatchRideImpl(
      stationId: (json['stationId'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      cost: (json['cost'] as num).toInt(),
      phonePassenger: json['phonePassenger'] as String,
      moreDetails: json['moreDetails'] as String,
    );

Map<String, dynamic> _$$DispatchRideImplToJson(_$DispatchRideImpl instance) =>
    <String, dynamic>{
      'stationId': instance.stationId,
      'timestamp': instance.timestamp.toIso8601String(),
      'origin': instance.origin,
      'destination': instance.destination,
      'cost': instance.cost,
      'phonePassenger': instance.phonePassenger,
      'moreDetails': instance.moreDetails,
    };
