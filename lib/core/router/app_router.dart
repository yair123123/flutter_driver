import 'package:driver_app/core/settings/presentation/screens/settings_screen.dart';
import 'package:driver_app/features/auth/presentation/screens/login_screen.dart';
import 'package:driver_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/list_chats_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/dispatch_screen.dart';
import 'package:driver_app/features/main/presentation/screens/main_app_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/rides_screens.dart';
import 'package:driver_app/features/rides/presentation/screens/station_rides_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/stations_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", builder: (context, state) => const SplashScreen()),
      GoRoute(path: "/login", builder: (context, state) => const LoginScreen()),
      ShellRoute(
        builder: (context, state, child) => MainTabsShell(child: child),
        routes: [
          GoRoute(
            path: '/main',
            builder:
                (context, state) =>
                    const SizedBox.shrink(), // דף ריק, רק לניווט היררכי
            routes: [
              GoRoute(
                path: 'dispatcher/summary',
                builder: (context, state) => const DispatchScreen(),
              ),
              ShellRoute(
                builder: (context, state, child) => RidesScreens(),
                routes: [
                  GoRoute(
                    path: 'rides/list',
                    builder: (context, state) => const StationsListScreen(),
                    routes: [
                      GoRoute(
                        path: 'group/:groupId',
                        builder: (context, state) {
                          final groupId = state.pathParameters['groupId'];
                          return GroupChatScreen(groupId: groupId!);
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'rides/map',
                    builder: (context, state) => const MapScreen(),
                  ),
                ],
              ),
              GoRoute(
                path: 'chats',
                builder: (context, state) => const ListChatsScreen(),
                routes: [
                  GoRoute(
                    path: 'chat/:chatId',
                    builder: (context, state) {
                      final chatId = state.pathParameters['chatId'];
                      return ChatScreen(chatId: chatId!);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: 'settings',
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
