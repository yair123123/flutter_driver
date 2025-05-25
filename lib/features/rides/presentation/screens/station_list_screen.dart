import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/presentation/providers/user_provider.dart';
import 'package:driver_app/features/rides/presentation/screens/station_chat_screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StationListScreen extends StatelessWidget {
  const StationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = context.watch<UserProvider>().user;
    final List<Station> stations = user?.driver_stations ?? [];

    const Color elegantGold = Color(0xFFFFD700);

    return Scaffold(
      appBar: AppBar(title: const Text("התחנות שלי")),
      body: ListView.builder(
        itemCount: stations.length,
        itemBuilder: (context, index) {
          final station = stations[index];
          final bool isVip = station.driver_status_name == "GOLD";

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Material(
                    elevation: 3,
                    color: Colors.white,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                  ),
                ),

                // תווית VIP אלכסונית
                if (isVip)
                  Positioned(
                    top: 8,
                    right: -32,
                    child: Transform.rotate(
                      angle: 0.785, // 45 מעלות (pi/4)
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        color: elegantGold,
                        alignment: Alignment.center,
                        child: const Text(
                          'VIP',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
