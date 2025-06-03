import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsNotifier extends StateNotifier<AsyncValue<Settings>> {
  final GetSettings getSettings;
  final SetSettings setSettings;
  SettingsNotifier(this.getSettings,this.setSettings) : super(const AsyncValue.loading()){
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final settings = await getSettings();
      state = AsyncValue.data(settings);
  }

Future<void> updateDarkMode(bool isDarkMode) async {
  if (state.value == null) return;
  try {
    state = const AsyncValue.loading();
    final updated = state.value!.copyWith(isDarkMode: isDarkMode);
    await setSettings(updated);
    state = AsyncValue.data(updated);
  } catch (e, st) {
    state = AsyncValue.error(e, st);
  }
}

}