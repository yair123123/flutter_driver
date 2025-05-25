import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'websocket_dto.freezed.dart';
part 'websocket_dto.g.dart';

WebSocketDto rideDtoFromJson(String str) => WebSocketDto.fromJson(json.decode(str));
String rideDtoToJson(WebSocketDto data) => json.encode(data.toJson());

@freezed
class WebSocketDto with _$WebSocketDto {
  const factory WebSocketDto({
    required String type,
    required dynamic data,
  }) = _WebSocketDto;

  factory WebSocketDto.fromJson(Map<String, dynamic> json) =>
      _$WebSocketDtoFromJson(json);
}
