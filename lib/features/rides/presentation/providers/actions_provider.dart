import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RidesActionsNotifier extends StateNotifier<AsyncValue<void>> {
  RidesActionsNotifier(this._repo) : super(const AsyncData(null));
  final RideRepository _repo;

  Future<void> giveRide(int rideId) async {
    state = const AsyncLoading();
    try {
      await _repo.takeRide({"id":rideId}); // פונה לשרת/WS ושולח פעולה
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

final rideActionsProvider = StateNotifierProvider<RidesActionsNotifier, AsyncValue<void>>(
  (ref) => RidesActionsNotifier(ref.watch(rideRepositoryProvider)),
);
