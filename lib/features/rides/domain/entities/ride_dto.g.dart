// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideDtoImpl _$$RideDtoImplFromJson(Map<String, dynamic> json) =>
    _$RideDtoImpl(
      type: json['type'] as String,
      ride: Ride.fromJson(json['ride'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RideDtoImplToJson(_$RideDtoImpl instance) =>
    <String, dynamic>{'type': instance.type, 'ride': instance.ride};
