part of config;

class ThemePrimary {
  static ThemeData theme() {
    return ThemeData(
      textTheme: GoogleFonts.beVietnamProTextTheme(
        ThemeText.appTextTheme(
          ThemeColors.primaryColor,
          ThemeColors.labelColor1,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.primaryColor,
          // shadowColor: ThemeColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          foregroundColor: ThemeColors.textColor3,
          textStyle: ThemeText.bodyMedium,
          elevation: 0,
        ),
      ),
    );
  }
}
