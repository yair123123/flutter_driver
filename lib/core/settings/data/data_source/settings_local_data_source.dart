import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsLocalDataSource {
  Future<Settings> getSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool("isDarkMode") ?? false;
    final isEnglish = prefs.getBool("isEnglish") ?? false;
    return Settings(isDarkMode: isDarkMode,isEnglish:isEnglish);
  }

  Future<void> setSettings(Settings settings) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isDarkMode", settings.isDarkMode);
  }
}
