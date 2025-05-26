import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class Pickup {
  final RideRepository rideRepository;
  Pickup({required this.rideRepository});
  Future<void> call(Map<String, int> rideId) {
    return rideRepository.pickup(rideId);
  }
}
