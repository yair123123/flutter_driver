import 'package:country_flags/country_flags.dart';
import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SettingsProvider>(
        builder: (context, Provider, child) {
          return ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              SwitchListTile(
                value: Provider.settings.isDarkMode,
                onChanged: (value) => Provider.updateDarkMode(value),
                title: Text("מצב כהה"),
              ),
              Row(
                children: [
                  IconButton(
                    icon: CountryFlag.fromLanguageCode(
                      'he',

                      width: 32,
                      height: 32,
                    ),
                    tooltip: 'עברית',
                    onPressed: () {
                      Provider.updateIsEnglish(false);
                    },
                  ),
                  IconButton(
                    icon: CountryFlag.fromLanguageCode(
                      'he',
                      width: 32,
                      height: 32,
                    ),
                    tooltip: 'English',
                    onPressed: () {
                      Provider.updateIsEnglish(false);
                    },
                  ),
                  ToggleButtons(
                    isSelected: [
                      Provider.settings.isEnglish,
                      !Provider.settings.isEnglish,
                    ],
                    onPressed: (int index) {
                      Provider.updateIsEnglish(false);
                    },
                    children: [
                      CountryFlag.fromLanguageCode('he'),
                      CountryFlag.fromLanguageCode('en'),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
