import 'package:driver_app/core/providers/auth_provider.dart';
import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/core/settings/presentation/screens/settings_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/list_chats_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';

import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/rides/presentation/screens/rides_screens.dart';
import 'package:driver_app/widgets/driver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainTabsShell extends ConsumerStatefulWidget {
  final Widget child;
  const MainTabsShell({super.key, required this.child});

  @override
  ConsumerState<MainTabsShell> createState() => _MainTabsShellState();
}

class _MainTabsShellState extends ConsumerState<MainTabsShell> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final token = ref.read(authProvider).token;
      if (token != null) {
        ref.read(userProvider.notifier).fetchUser(token);
      }
    });
  }
int getTabIndex(BuildContext context, User user,List<String> routes ) {
  final location = GoRouterState.of(context).uri.toString();
  final i = routes.indexWhere((r) => location.startsWith(r));
  return i >= 0 ? i : 0;
}
  void _onTap(int index,List<String> routes,BuildContext context) {
    context.go(routes[index]);
  }
  
  @override
  Widget build(BuildContext context) {
    final userAsync = ref.watch(userProvider);
    return userAsync.when(
      loading:
          () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
      error:
          (error, stack) => Scaffold(
            body: Center(child: Text("שגיאה בטעינת המשתמש: $error")),
          ),
      data: (user) {
        if (user == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final List<Widget> screens = [
          const RidesScreens(),
          if (user.is_dispatcher) const SummaryDispatchesScreen(),
          const ListChatsScreen(),
          const SettingsScreen(),
        ];
        final routes = [
          "/main/rides/list",
          if (user.is_dispatcher) "/main/dispatcher/summary",
          "/main/chats",
          "/main/settings",
        ];
        final navItems = [
          const BottomNavigationBarItem(
            icon: Icon(Icons.local_taxi),
            label: "נסיעות",
          ),
          if (user.is_dispatcher)
            const BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              label: "סדרנות",
            ),
          const BottomNavigationBarItem(icon: Icon(Icons.chat), label: "צ'אט"),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "הגדרות",
          ),
        ];
      final currentIndex = getTabIndex(context, user,routes);

        return Scaffold(
          appBar: DriverAppBar(user: user),

body: IndexedStack(
  index: currentIndex, 
  children: screens,),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            items: navItems,
            onTap: (index) => _onTap(index,routes,context),
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
