import 'package:driver_app/features/rides/presentation/providers/groups_init_provider.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:driver_app/features/rides/presentation/screens/station_rides_screen.dart';
import 'package:driver_app/widgets/vip_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StationListScreen extends ConsumerWidget {
  const StationListScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final groupsInit = ref.watch(groupsInitProvider);
    ref.watch(rideEventsListenerProvider);

        return groupsInit.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('שגיאה בטעינת קבוצות: $e')),
      data: (_) {
        final groups = ref.watch(groupsProvider);
      
        if (groups.isEmpty) {
          return const Center(child: Text('אין קבוצות להצגה.'));
        }
       
    return 
       ListView.builder(
        itemCount: groups.length,
        restorationId: 'stations_list_view',

        prototypeItem: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          title: Text("exapmle"),
          subtitle: Text("biggest componnet "),
        ),
        itemBuilder: (context, index) {
          final station = groups[index];
          final bool isVip = true;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Stack(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  title: Text(station.name),
                  subtitle: Text(station.rides[0].details),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => GroupChatScreen(groupId: station.id),
                      ),
                    );
                  },
                ),

                if (isVip) const VipTag(),
              ],
            ),
          );
        },
      );});}}