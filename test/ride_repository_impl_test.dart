import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource.dart';
import 'package:driver_app/features/rides/data/repositories/ride_websocket_repository_impl.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:async';

class FakeDatasource extends RidesWebSocketDatasource {
  FakeDatasource() : super(FakeService());
  WebSocketDto? sent;
  @override
  void sendRideAction(RideDto ride) {
    sent = WebSocketDto(content: ride, typeCode: 10);
  }

  @override
  Stream<RideDto> get rideEvents => const Stream.empty();
}

class FakeService implements WebSocketService {
  @override
  Stream<dynamic> get stream => const Stream.empty();

  @override
  bool get isConnected => true;

  @override
  void connect(String url, String token) {}

  @override
  void dispose() {}

  @override
  void disconnect() {}

  @override
  Stream<WebSocketDto> get webSocketDto => const Stream.empty();

  @override
  String send(WebSocketDto message) => '';
}

void main() {
  group('RideRepositoryImpl', () {
    test('takeRide sends type 23 message', () async {
      final ds = FakeDatasource();
      final repo = RideRepositoryImpl(ds);
      await repo.takeRide({'id': 1});
      expect(ds.sent, isNotNull);
      expect((ds.sent!.content as RideDto).typeCode, 23);
    });
  });
}
