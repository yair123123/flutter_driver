import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_repository.dart';

class ListenToNewRides {
  final RideRepository rideRepository;
  ListenToNewRides( this.rideRepository);
  Stream<RideDto> call() {
    return rideRepository.listenToNewRides();
  }
}
