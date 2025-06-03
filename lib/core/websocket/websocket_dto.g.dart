// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'websocket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebSocketDtoImpl _$$WebSocketDtoImplFromJson(Map<String, dynamic> json) =>
    _$WebSocketDtoImpl(
      content: json['content'],
      error: json['error'] as String?,
      typeCode: (json['typeCode'] as num).toInt(),
    );

Map<String, dynamic> _$$WebSocketDtoImplToJson(_$WebSocketDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'error': instance.error,
      'typeCode': instance.typeCode,
    };
