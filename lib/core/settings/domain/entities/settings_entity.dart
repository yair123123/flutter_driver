class Settings {
  bool isDarkMode;

  Settings({required this.isDarkMode});

  Settings copyWith({bool? isDarkMode}) {
    return Settings(
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}