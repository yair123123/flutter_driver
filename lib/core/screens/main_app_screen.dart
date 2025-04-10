import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/rides/presentation/screens/list_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainAppScreen extends StatefulWidget {
  _MainAppScreen createState() => _MainAppScreen();
}

class _MainAppScreen extends State<MainAppScreen> {
  int _selectedIndex = 0;

  List<Widget> _screens = [ListScreen(), MapScreen()];

  void _onTapp(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello ${authProvider.user!.email}"),
        actions: [
          IconButton(
            onPressed:
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => MainAppScreen()),
                ),
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Map"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
        ],
        onTap: _onTapp,
      ),
    );
  }
}
