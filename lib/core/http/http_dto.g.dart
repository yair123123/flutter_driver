// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpDtoImpl<T> _$$HttpDtoImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$HttpDtoImpl<T>(
  content: fromJsonT(json['content']),
  success: json['success'] as bool,
  error: json['error'] as String,
);

Map<String, dynamic> _$$HttpDtoImplToJson<T>(
  _$HttpDtoImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'content': toJsonT(instance.content),
  'success': instance.success,
  'error': instance.error,
};
