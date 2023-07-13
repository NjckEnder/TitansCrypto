library theme;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'theme_colors.dart';
part 'theme_size.dart';
part 'theme_text.dart';

class ThemePrimary {
  static ThemeData theme() {
    return ThemeData(
// theme text
      textTheme: GoogleFonts.beVietnamProTextTheme(
        ThemeText.appTextTheme(
          ThemeColors.primaryColor,
          ThemeColors.labelColor1,
        ),
      ),
//

      useMaterial3: true,

// Theme elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.primaryColor,
          // shadowColor: ThemeColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          foregroundColor: ThemeColors.textColor3,
          textStyle: ThemeText.titleSmall.copyWith(fontWeight: FontWeight.w400),
          elevation: 0,
        ),
      ),

// Theme text form field
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeColors.backgroundColor),
            borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeColors.backgroundColor),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(color: ThemeColors.primaryColor.withOpacity(0.3))),
        filled: true,
        fillColor: ThemeColors.labelColor1,
        hintStyle: ThemeText.bodyMedium
            .copyWith(color: ThemeColors.textColor4, fontSize: 14),
        // focusColor: Colors.blueGrey,
      ),

// theme bottom navigation bar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: ThemeColors.backgroundColor,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 12),
        selectedItemColor: ThemeColors.textColor5,
        unselectedItemColor: ThemeColors.textColor4,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(size: 50),
        enableFeedback: true
        // unselectedIconTheme: IconThemeData(size: 0),
      ),
    );
  }
}
