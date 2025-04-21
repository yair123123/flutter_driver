import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("הגדרות")),
      body: Consumer<SettingsProvider>(
        builder: (context, Provider, child) {
          return ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              SwitchListTile(
                value: Provider.settings.isDarkMode,
                onChanged:(value) =>  Provider.updateDarkMode(value),
                title: Text("מצב כהה"),
              ),
            ],
          );
        },
      ),
    );
  }
}
