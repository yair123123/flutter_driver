// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  driver_id: json['driver_id'] as String,
  username: json['username'] as String,
  gender: json['gender'] as String,
  rating: (json['rating'] as num).toDouble(),
  monthly_rides_sum: (json['monthly_rides_sum'] as num).toInt(),
  is_dispatcher: json['is_dispatcher'] as bool,
  stations:
      (json['stations'] as List<dynamic>)
          .map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'driver_id': instance.driver_id,
      'username': instance.username,
      'gender': instance.gender,
      'rating': instance.rating,
      'monthly_rides_sum': instance.monthly_rides_sum,
      'is_dispatcher': instance.is_dispatcher,
      'stations': instance.stations,
    };
