import 'package:driver_app/features/dispatcher/presentation/screens/add_ride_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:flutter/material.dart';

class ShellDispatch extends StatefulWidget {
  const ShellDispatch({super.key});
  @override
  _ShellDispatch createState() => _ShellDispatch();
}

class _ShellDispatch extends State<ShellDispatch> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [const AddRideScreen(),const SummaryDispatchesScreen()];
    final List<BottomNavigationBarItem> navItems = [
      const BottomNavigationBarItem(icon: Icon(Icons.add), label: "פרסם"),
      const BottomNavigationBarItem(icon: Icon(Icons.summarize), label: "סיכום"),
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
