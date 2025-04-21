class DispatchEntity {
  final String rideId;
  final String driverId;
  final String pickupLocation;
  final String destination;
  final DateTime dispatchTime;

  DispatchEntity({
    required this.rideId,
    required this.driverId,
    required this.pickupLocation,
    required this.destination,
    required this.dispatchTime,
  });
}