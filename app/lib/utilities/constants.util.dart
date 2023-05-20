import 'package:ecchymns/screens/favorites.screen.dart';
import 'package:ecchymns/screens/goun_hymns.screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/french_hymns.page.dart';
import '../pages/goun_hymns.page.dart';
import '../screens/home.screen.dart';

const themeColor1 = Color(0xFF318CE7);
const themeColor2 = Color(0xFF1C108A);
const themeColor3 = Color(0xFF15097B);
const eccBlue = Color(0xFF006AFF);
const eccWhiteTheme = Color(0xFFF4F4F4);

const appGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
);

double iconSize = 20;

const bottomNavBarDecoration = NavBarDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
  borderRadius: BorderRadius.zero,
  colorBehindNavBar: Colors.black,
);

const appBarDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  ),
);

List<Widget> buildScreens({
  Widget homeScreenReplacement = const HomeScreen(),
}) {
  return [homeScreenReplacement, GounHymnsScreen(), FavoritesScreen()];
}

List<PersistentBottomNavBarItem> navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Image.asset(
        "images/pro.png",
        color: eccBlue,
        width: 55,
        height: 55,
      ),
      title: "Programmes",
      textStyle: TextStyle(fontFamily: "Kiwi", color: Colors.black, fontSize: 11.0),
      activeColorPrimary: eccBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Image.asset(
        "images/home.png",
        color: eccBlue,
        width: 55,
        height: 55,
      ),
      title: "Accueil",
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Image.asset(
        "images/favori.png",
        color: eccBlue,
        width: 55,
        height: 52,
      ),
      title: "Favoris",
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}


const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async => _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) =>
      mode == ThemeMode.system ? _prefs?.remove(kThemeModeKey) : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark ? DarkModeTheme() : LightModeTheme();

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;

  TextStyle get title1 => GoogleFonts.getFont(
        'Poppins',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Poppins',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Poppins',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Poppins',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Poppins',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Poppins',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Poppins',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF4B39EF);
  late Color secondaryColor = const Color(0xFF39D2C0);
  late Color tertiaryColor = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
}

class DarkModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF4B39EF);
  late Color secondaryColor = const Color(0xFF39D2C0);
  late Color tertiaryColor = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFF1A1F24);
  late Color secondaryBackground = const Color(0xFF101213);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF22282F);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
