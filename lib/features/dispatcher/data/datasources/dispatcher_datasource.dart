import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';

class DispatcherDatasource {
  WebSocketService webSocketService;
  DispatcherDatasource(this.webSocketService);

  void sendRideAction(RideDto ride){
    webSocketService.send(WebSocketDto(content: ride, typeCode: 10));
  }
}