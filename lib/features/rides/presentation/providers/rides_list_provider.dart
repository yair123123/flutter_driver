import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/features/rides/data/datasources/ride_http_datasource.dart';
import 'package:driver_app/features/rides/data/repositories/ride_http_repository_impl.dart';
import 'package:driver_app/features/rides/domain/entities/group.dart';
import 'package:driver_app/features/rides/domain/entities/ride.dart';
import 'package:driver_app/features/rides/domain/usecases/fetch_groups_usecase.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupsNotifier extends StateNotifier<List<Group>> {
  final FetchGroupsUsecase fetchGroups;
  GroupsNotifier(this.fetchGroups) : super([]);
  Future<void> fetchAndInitGroups(String jwt) async {
    final groups = await fetchGroups.rideHttpRepository.fetchGroups(jwt);
    setGroups(groups);
  }
  void addRideToGroup(Ride ride, int groupId) {}
  void removeRideFromGroup(int rideId) {}
  void setGroups(List<Group> groups) {
    state = List<Group>.from(groups);
  }
}

final groupsProvider = StateNotifierProvider<GroupsNotifier, List<Group>>(
  (ref)  {
    final apiDatasource = RideHttpDatasource(Env.authUrl);
  final repo = RideHttpRepositoryImpl(apiDatasource);
  final fetchGroupsUsecase = FetchGroupsUsecase(repo);
  return GroupsNotifier(fetchGroupsUsecase);
  },
);

final rideEventsListenerProvider = Provider<void>((ref) {
  ref.listen<AsyncValue<Ride>>(publishedRidesProvider, (prev, asyncRide) {
    asyncRide.whenData((ride) {
      ref.read(groupsProvider.notifier).addRideToGroup(ride, ride.stationId);
    });
  });

  ref.listen<AsyncValue<int>>(soldRidesProvider, (prev, asyncRideId) {
    asyncRideId.whenData((rideId) {
      ref.read(groupsProvider.notifier).removeRideFromGroup(rideId);
    });
  });
});
