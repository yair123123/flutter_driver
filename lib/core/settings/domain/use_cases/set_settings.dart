import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/core/settings/domain/repository/settings_repository.dart';

class SetSettings {
  final SettingsRepository repository;

  SetSettings(this.repository);

  Future<void> call(Settings settings) async {
    await repository.setSettings(settings);
  }

}