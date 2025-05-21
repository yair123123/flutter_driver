import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  final GetSettings getSettings;
  final SetSettings setSettings;
  Settings _settings = Settings(isDarkMode: false,isEnglish:false);
  SettingsProvider(this.getSettings,this.setSettings){
    _loadSettings();
  }
  Settings get settings => _settings; 

  Future<void> _loadSettings() async {
    _settings = await getSettings();
    notifyListeners();
  }

  Future<void> updateDarkMode(bool isDarkMode) async {
    _settings = Settings(isDarkMode: isDarkMode,isEnglish: _settings.isEnglish);
    await setSettings(_settings);
    notifyListeners();
  }
  Future<void> updateIsEnglish(bool isEnglish) async {
    _settings = Settings(isDarkMode: _settings.isDarkMode,isEnglish: isEnglish);
    await setSettings(_settings);
    notifyListeners();
  }

}