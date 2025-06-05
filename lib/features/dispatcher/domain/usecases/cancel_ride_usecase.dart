import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class CancelRideUsecase {
  final DispatchRepository repository;
  CancelRideUsecase(this.repository);

  void call(CancelRide ride){
    repository.cancelRide(ride);
  }
}