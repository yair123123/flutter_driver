
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource%20.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_repository.dart';

class RideRepositoryImpl implements RideRepository{
  final RidesWebSocketDatasource datasource;
  RideRepositoryImpl(this.datasource);
  @override
  Stream<RideDto> listenToNewRides(){
    return datasource.rideEvents;
  }
    @override
  Future<void> takeRide(String rideId) async {
    datasource.sendRideAction('take_ride', rideId: rideId);
  }

  @override
  Future<void> pickup(String rideId) async {
    datasource.sendRideAction('pickup', rideId: rideId);
  }

  @override
  Future<void> completeRide(String rideId) async {
    datasource.sendRideAction('complete_ride', rideId: rideId);
  }
}