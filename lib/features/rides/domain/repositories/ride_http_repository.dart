import 'package:driver_app/features/rides/domain/entities/group.dart';

abstract class RideHttpRepository {
  Future<List<Group>> fetchGroups(String jwt);
}