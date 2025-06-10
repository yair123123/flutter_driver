import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/stations_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RidesScreens extends StatefulWidget {
  const RidesScreens({super.key});

  @override
  State<RidesScreens> createState() => _RidesScreensState();
}

class _RidesScreensState extends State<RidesScreens> {
  int _selectedIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final location = GoRouterState.of(context).uri.toString();
    if (location.contains('/map')) {
      _selectedIndex = 1;
    } else {
      _selectedIndex = 0;
    }
  }

  int getTabIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location.contains('/map')) return 1;
    return 0;
  }

  void _onTap(int index, BuildContext context) {
    if (index == 0) {
      context.go('/rides/list');
    } else {
      context.go('/rides/map');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = getTabIndex(context);
    final List<Widget> screens = [
      const StationsListScreen(),
      const MapScreen(),
    ];
    final List<BottomNavigationBarItem> navItems = [
      const BottomNavigationBarItem(icon: Icon(Icons.list), label: "רשימה"),
      const BottomNavigationBarItem(icon: Icon(Icons.map), label: "מפה"),
    ];
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => _onTap(index, context),
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
