import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/rides/domain/entities/ride.dart';

class UpdateRideUsecase {
  final DispatchRepository repository;
  UpdateRideUsecase(this.repository);

  void call(Ride ride){
    repository.updateRide(ride);
  }
}