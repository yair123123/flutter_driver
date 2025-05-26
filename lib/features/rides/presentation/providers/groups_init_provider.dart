import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final groupsInitProvider = FutureProvider<void>((ref) async {
  await ref.read(groupsProvider.notifier).fetchAndInitGroups();
});