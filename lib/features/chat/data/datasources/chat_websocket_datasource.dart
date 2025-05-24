import 'dart:convert';

import 'package:driver_app/core/websocket/websocket_service.dart';
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

  void sendRideAction(String action, {required String rideId}) {
    wbSocket.send({
      'type': action, 
      'rideId': rideId,
      'timestamp': DateTime.now().toIso8601String(),
    });
  }
}
