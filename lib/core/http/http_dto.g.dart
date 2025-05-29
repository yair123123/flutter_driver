// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpDtoImpl _$$HttpDtoImplFromJson(Map<String, dynamic> json) =>
    _$HttpDtoImpl(
      content: json['content'],
      success: json['success'] as bool,
      error: json['error'] as String,
    );

Map<String, dynamic> _$$HttpDtoImplToJson(_$HttpDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'success': instance.success,
      'error': instance.error,
    };
