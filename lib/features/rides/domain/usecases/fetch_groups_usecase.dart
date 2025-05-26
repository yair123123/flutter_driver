import 'package:driver_app/features/rides/domain/entities/group.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_http_repository.dart';

class FetchGroupsUsecase {
  final RideHttpRepository rideHttpRepository;
  FetchGroupsUsecase( this.rideHttpRepository);
  Future<List<Group>> call(String jwt) {
    return rideHttpRepository.fetchGroups(jwt);
  }
}
