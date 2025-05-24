import 'package:driver_app/features/rides/domain/repositories/ride_repository.dart';

class Pickup {
  final RideRepository rideRepository;
  Pickup({required this.rideRepository});
  Future<void> call(String rideId) {
    return rideRepository.pickup(rideId);
  }
}
