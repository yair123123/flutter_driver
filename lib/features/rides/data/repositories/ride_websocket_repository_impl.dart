import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource%20.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class RideRepositoryImpl implements RideRepository {
  final RidesWebSocketDatasource datasource;
  RideRepositoryImpl(this.datasource);
  @override
  Stream<RideDto> listenToNewRides() {
    return datasource.rideEvents;
  }

  @override
  Future<void> takeRide(Map<String, int> takeRide) async {
    RideDto rideDto = RideDto(typeCode: 23, content: takeRide, error: "");
    datasource.sendRideAction(rideDto);
  }

  @override
  Future<void> pickup(Map<String, int> takeRide) async {
    RideDto rideDto = RideDto(typeCode: 24, content: takeRide, error: "");
    datasource.sendRideAction(rideDto);
  }

  @override
  Future<void> completeRide(Map<String, int> takeRide) async {
    RideDto rideDto = RideDto(typeCode: 25, content: takeRide, error: "");
    datasource.sendRideAction(rideDto);
  }
}
