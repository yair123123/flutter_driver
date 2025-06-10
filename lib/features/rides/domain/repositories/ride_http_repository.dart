import 'package:driver_app/features/main/domein/entities/station.dart';

abstract class RideHttpRepository {
  Future<List<Station>> fetchGroups(String jwt);
}