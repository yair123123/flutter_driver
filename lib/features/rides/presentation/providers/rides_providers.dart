import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource%20.dart';
import 'package:driver_app/features/rides/data/repositories/ride_repository_impl.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecases/listen_to_new_rides.dart';
import '../../domain/entities/ride_dto.dart';

final listenToNewRidesProvider = StreamProvider<RideDto>((ref) {
  final listenToNewRides = ref.watch(listenToNewRidesUseCaseProvider);
  return listenToNewRides();
});

final listenToNewRidesUseCaseProvider = Provider<ListenToNewRides>((ref) {
  final rideRepository = ref.watch(rideRepositoryProvider);
  return ListenToNewRides(rideRepository);
});

final rideRepositoryProvider = Provider<RideRepository>((ref) {
  final ridesDataSource = ref.watch(ridesWebSocketDatasourceProvider);
  return RideRepositoryImpl(ridesDataSource);
});

final ridesWebSocketDatasourceProvider = Provider<RidesWebSocketDatasource>((
  ref,
) {
  final webSocketService = ref.watch(webSocketServiceProvider);
  return RidesWebSocketDatasource(webSocketService);
});

final webSocketServiceProvider = Provider<WebSocketService>((ref) {
  return WebSocketService();
});
