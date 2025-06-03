import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class CompleteRide {
  final RideRepository rideRepository;
  CompleteRide({required this.rideRepository});
  Future<void> call(Map<String, int> rideId) {
    return rideRepository.completeRide(rideId);
  }
}
