import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xo_game/src/ui/global/app_colors.dart';

String appName = 'App Name';

TextStyle _primaryTextStyle = const TextStyle(
  color: primaryColor,
);

TextStyle _textStyle = const TextStyle(
  color: textColorBlack,
);

TextTheme _primaryTextTheme = TextTheme(
  headline4: GoogleFonts.raleway(
    fontSize: 35,
    textStyle: _primaryTextStyle,
  ),
  headline3: GoogleFonts.raleway(
    fontSize: 49,
    textStyle: _primaryTextStyle,
  ),
  headline2: GoogleFonts.raleway(
    fontSize: 61,
    textStyle: _primaryTextStyle,
  ),
  headline1: GoogleFonts.raleway(
    fontSize: 98,
    textStyle: _primaryTextStyle,
  ),
  headline5: GoogleFonts.raleway(
    fontSize: 24,
    textStyle: _primaryTextStyle,
  ),
  headline6: GoogleFonts.raleway(
    fontSize: 20,
    textStyle: _primaryTextStyle,
  ),
  subtitle2: GoogleFonts.raleway(
    fontSize: 14,
    textStyle: _primaryTextStyle,
  ),
  subtitle1: GoogleFonts.raleway(
    fontSize: 16,
    textStyle: _primaryTextStyle,
  ),
  bodyText2: GoogleFonts.raleway(
    fontSize: 15,
    textStyle: _primaryTextStyle,
  ),
  bodyText1: GoogleFonts.raleway(
    fontSize: 17,
    textStyle: _primaryTextStyle,
  ),
  caption: GoogleFonts.raleway(
    fontSize: 13,
    textStyle: _primaryTextStyle,
  ),
  overline: GoogleFonts.raleway(
    fontSize: 11,
    textStyle: _primaryTextStyle,
  ),
  button: GoogleFonts.raleway(
    fontSize: 20,
    textStyle: _primaryTextStyle,
  ),
);

TextTheme _textTheme = TextTheme(
  headline4: GoogleFonts.raleway(
    fontSize: 35,
    textStyle: _textStyle,
  ),
  headline3: GoogleFonts.raleway(
    fontSize: 49,
    textStyle: _textStyle,
  ),
  headline2: GoogleFonts.raleway(
    fontSize: 61,
    textStyle: _textStyle,
  ),
  headline1: GoogleFonts.raleway(
    fontSize: 98,
    textStyle: _textStyle,
  ),
  headline5: GoogleFonts.raleway(
    fontSize: 24,
    textStyle: _textStyle,
  ),
  headline6: GoogleFonts.raleway(
    fontSize: 20,
    textStyle: _textStyle,
  ),
  subtitle2: GoogleFonts.raleway(
    fontSize: 14,
    textStyle: _textStyle,
  ),
  subtitle1: GoogleFonts.raleway(
    fontSize: 16,
    textStyle: _textStyle,
  ),
  bodyText2: GoogleFonts.raleway(
    fontSize: 15,
    textStyle: _textStyle,
  ),
  bodyText1: GoogleFonts.raleway(
    fontSize: 17,
    textStyle: _textStyle,
  ),
  caption: GoogleFonts.raleway(
    fontSize: 13,
    textStyle: _textStyle,
  ),
  overline: GoogleFonts.raleway(
    fontSize: 11,
    textStyle: _textStyle,
  ),
  button: GoogleFonts.raleway(
    fontSize: 20,
    textStyle: _textStyle,
  ),
);

AppBarTheme _appBarTheme = AppBarTheme(
  color: Colors.white,
  iconTheme: const IconThemeData(color: Colors.black), toolbarTextStyle: _textTheme.bodyText2, titleTextStyle: _textTheme.headline6,
);

ButtonThemeData _buttonTheme = const ButtonThemeData(
  padding: EdgeInsets.all(10.0),
  shape: StadiumBorder(),
);

ThemeData themeData = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  bottomAppBarColor: Colors.white,
  brightness: Brightness.light,
  textTheme: _textTheme,
  primaryTextTheme: _primaryTextTheme,
  iconTheme: const IconThemeData(color: primaryColor),
  primaryIconTheme: const IconThemeData(color: primaryColor),
  appBarTheme: _appBarTheme,
  buttonTheme: _buttonTheme, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
);

ButtonStyle buttonXStyle = ButtonStyle(
  shape:
  MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  )),
  foregroundColor: MaterialStateProperty.all(Colors.white),
  backgroundColor: MaterialStateProperty.all(mediumPurpleColor),
  textStyle: MaterialStateProperty.all(
    const TextStyle(
      fontFamily: 'Cairo',
      fontSize: 14,
      color: Colors.white,
    ),
  ),
);

ButtonStyle buttonOStyle = ButtonStyle(
  shape:
  MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  )),
  foregroundColor: MaterialStateProperty.all(Colors.white),
  backgroundColor: MaterialStateProperty.all(coralColor),
  textStyle: MaterialStateProperty.all(
    const TextStyle(
      fontFamily: 'Cairo',
      fontSize: 14,
      color: Colors.white,
    ),
  ),
);