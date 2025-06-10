import 'dart:async';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeWebSocketService implements WebSocketService {
  final StreamController<WebSocketDto> controller =
      StreamController<WebSocketDto>.broadcast();

  WebSocketDto? lastSent;

  @override
  Stream<WebSocketDto> get webSocketDto => controller.stream;

  @override
  String send(WebSocketDto message) {
    lastSent = message;
    controller.add(message);
    return '';
  }

  // unused members from WebSocketService
  @override
  void connect(String url, String token) {}

  @override
  void dispose() {}

  @override
  void disconnect() {}

  @override
  bool get isConnected => true;

  @override
  Stream<dynamic> get stream => controller.stream;
}

void main() {
  group('RidesWebSocketDatasource', () {
    late FakeWebSocketService service;
    late RidesWebSocketDatasource datasource;

    setUp(() {
      service = FakeWebSocketService();
      datasource = RidesWebSocketDatasource(service);
    });

    test('rideEvents yields only typeCode 10 events', () async {
      final events = <RideDto>[];
      datasource.rideEvents.listen(events.add);
      service.controller.add(WebSocketDto(content: {'id': 1}, typeCode: 10));
      service.controller.add(WebSocketDto(content: {'id': 2}, typeCode: 11));
      await Future.delayed(Duration.zero);
      expect(events, hasLength(1));
      expect(events.first.content['id'], 1);
    });

    test('sendRideAction forwards message through service', () async {
      final ride = RideDto(typeCode: 23, content: {'id': 3});
      datasource.sendRideAction(ride);
      expect(service.lastSent, isNotNull);
      expect(service.lastSent!.typeCode, 10); // wrapper type
      expect(service.lastSent!.content, ride);
    });
  });
}
