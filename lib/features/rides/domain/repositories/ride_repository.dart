import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';

abstract class RideRepository {
  Stream<RideDto> listenToNewRides();
  Future<void> takeRide(String rideid);
  Future<void> pickup(String rideid);
  Future<void> completeRide(String rideid);
}
