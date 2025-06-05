import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/dispatch_ride.dart';
import 'package:driver_app/features/rides/domain/entities/ride.dart';

abstract class  DispatchRepository {
  void dispatchNewRide(DispatchRide ride);
  void updateRide(Ride ride);
  void cancelRide(CancelRide ride);
}