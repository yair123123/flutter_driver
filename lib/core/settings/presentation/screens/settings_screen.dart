import 'package:driver_app/core/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(settingsProvider);

    return Scaffold(
      body: settingsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text("שגיאה: $e")),
        data: (settings) {
          return ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              SwitchListTile(
                value: settings!.isDarkMode,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateDarkMode(value);
                },
                title: const Text("מצב כהה"),
              ),
            ],
          );
        },
      ),
    );
  }
}
