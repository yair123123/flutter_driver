import 'package:driver_app/features/dispatcher/domain/entities/dispatch_ride.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class DispatchNewRideUsecase {
  final DispatchRepository repository;
  DispatchNewRideUsecase(this.repository);

  void call(DispatchRide ride){
    repository.dispatchNewRide(ride);
  }
}