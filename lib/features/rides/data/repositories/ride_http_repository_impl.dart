import 'package:driver_app/features/rides/data/datasources/ride_http_datasource.dart';
import 'package:driver_app/features/rides/domain/entities/group.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_http_repository.dart';

class RideHttpRepositoryImpl  implements RideHttpRepository{
  final RideHttpDatasource rideHttpDatasource;
  RideHttpRepositoryImpl(this.rideHttpDatasource);
  @override
  Future<List<Group>> fetchGroups(String jwt) async {
    // TODO: implement actual fetching logic
    return rideHttpDatasource.initGroups(jwt);
  }
}