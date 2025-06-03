import 'dart:convert';

import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/chat/domain/entites/message.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';

class MessagesWebSocketDatasource {
  final WebSocketService wbSocket;
  MessagesWebSocketDatasource(this.wbSocket);
  Stream<RideDto> get rideEvents {
    return wbSocket.stream
        .map((event) {
          try {
            final map = event is String ? event : jsonDecode(event);
            if (map['type'] == "new_ride") {
              return map;
            }
          } catch (_) {}
          return null;
        })
        .where((event) => event != null)
        .cast<RideDto>();
  }

  void sendMessage(Message message) {
    wbSocket.send(WebSocketDto(content: message, typeCode: 30));
  }
}
