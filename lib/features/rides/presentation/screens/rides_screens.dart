import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/station_list_screen.dart';
import 'package:flutter/material.dart';

class RidesScreens extends StatefulWidget {
  const RidesScreens({super.key});
  @override
  _RidesScreens createState() => _RidesScreens();
}

class _RidesScreens extends State<RidesScreens> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [const StationListScreen(),const MapScreen()];
    final List<BottomNavigationBarItem> navItems = [
      const BottomNavigationBarItem(icon: Icon(Icons.list), label: "רשימה"),
      const BottomNavigationBarItem(icon: Icon(Icons.map), label: "מפה"),
    ];
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        iconSize: 20.0, 
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: navItems,
      ),
    );
  }
}
