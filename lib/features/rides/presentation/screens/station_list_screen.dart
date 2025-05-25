import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/presentation/providers/user_provider.dart';
import 'package:driver_app/features/rides/presentation/screens/station_chat_screens.dart';
import 'package:driver_app/widgets/vip_tag.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StationListScreen extends StatelessWidget {
  const StationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = context.watch<UserProvider>().user;
    final List<Station> stations = user?.stations ?? [];

    return Scaffold(
      appBar: AppBar(title: const Text("התחנות שלי")),
      body: ListView.builder(
        itemCount: stations.length,
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
          final station = stations[index];
          final bool isVip = station.driver_status == "GOLD";

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Stack(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  title: Text(station.station_name),
                  subtitle: const Text("הודעה אחרונה שנשלחה"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => StationChatScreen(station: station),
                      ),
                    );
                  },
                ),

                if (isVip) const VipTag(),
              ],
            ),
          );
        },
      ),
    );
  }
}
