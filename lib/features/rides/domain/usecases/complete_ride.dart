import 'package:driver_app/features/rides/domain/repositories/ride_repository.dart';

class CompleteRide {
  final RideRepository rideRepository;
  CompleteRide({required this.rideRepository});
  Future<void> call(String rideId) {
    return rideRepository.completeRide(rideId);
  }
}
