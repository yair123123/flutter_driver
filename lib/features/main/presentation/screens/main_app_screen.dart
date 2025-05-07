import 'package:driver_app/core/settings/presentation/screens/settings_screen.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:driver_app/features/main/presentation/providers/user_provider.dart';
import 'package:driver_app/features/rides/presentation/screens/list_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainAppScreen extends StatefulWidget {
  @override
  _MainAppScreenState createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final token =
          Provider.of<AuthProvider>(context, listen: false).user?.jwt_token;
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
    final List<Widget> _screens = [
      ListScreen(),
      MapScreen(),
      if (user.isDispatcher) SummaryDispatchesScreen(),
    ];
    final navItems = [
      const BottomNavigationBarItem(icon: Icon(Icons.map), label: "מפה"),
      const BottomNavigationBarItem(icon: Icon(Icons.list), label: "רשימה"),
      if (user.isDispatcher)
        const BottomNavigationBarItem(
          icon: Icon(Icons.local_taxi),
          label: "סדרנות",
        ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("שלום ${userProvider.user.username}"),
        actions: [
          IconButton(
            onPressed:
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => SettingsScreen()),
                ),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: navItems,
        onTap: _onTapp,
      ),
    );
  }
}
