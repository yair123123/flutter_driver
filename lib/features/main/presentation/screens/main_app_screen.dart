import 'package:driver_app/core/settings/presentation/screens/settings_screen.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:driver_app/features/main/presentation/providers/user_provider.dart';
import 'package:driver_app/features/rides/presentation/screens/list_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  _MainAppScreenState createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final token = Provider.of<AuthProvider>(context, listen: false).token;
      if (token != null) {
        Provider.of<UserProvider>(context, listen: false).getDetailsUser(token);
      }
    });
  }

  void _onTapp(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    if (user == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final List<Widget> screens = [
      const ListScreen(),
      const MapScreen(),
      if (user.is_dispatcher) const SummaryDispatchesScreen(),
      const SettingsScreen(),
    ];

    final navItems = [
      const BottomNavigationBarItem(icon: Icon(Icons.map), label: "מפה"),
      const BottomNavigationBarItem(icon: Icon(Icons.list), label: "רשימה"),
      if (user.is_dispatcher)
        const BottomNavigationBarItem(
          icon: Icon(Icons.local_taxi),
          label: "סדרנות",
        ),
      const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "הגדרות"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("שלום ${user.username}"),
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: navItems,
        onTap: _onTapp,
          type: BottomNavigationBarType.fixed,

      ),
    );
  }
}
