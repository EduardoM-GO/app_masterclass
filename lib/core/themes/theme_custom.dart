import 'package:app_masterclass/core/themes/cor_dark.dart';
import 'package:app_masterclass/core/themes/cor_light.dart';
import 'package:app_masterclass/core/themes/fonte_custom.dart';
import 'package:flutter/material.dart';

class ThemeCustom {
  static get darkTheme => ThemeData(
        colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: CorDark.primary,
            onPrimary: CorDark.textHighlight,
            secondary: CorDark.cardBackground,
            onSecondary: CorDark.textHighlight,
            error: Colors.red,
            onError: CorDark.textHighlight,
            background: CorDark.scaffoldBackground,
            onBackground: CorDark.textHighlight,
            surface: CorDark.cardBackground,
            onSurface: CorDark.bodyText),
        primaryColor: CorDark.primary,
        scaffoldBackgroundColor: CorDark.scaffoldBackground,
        appBarTheme:
            AppBarTheme(color: CorDark.scaffoldBackground, elevation: 0),
        cardColor: CorDark.cardBackground,
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(16.0)),
        highlightColor: CorDark.textHighlight,
        textTheme: TextTheme(
          headline1: FonteCustom.headline1,
          headline2: FonteCustom.headline2,
          headline3: FonteCustom.headline3,
          headline4: FonteCustom.headline4,
          headline5: FonteCustom.headline5,
          headline6: FonteCustom.headline6,
          subtitle1: FonteCustom.subtitle1,
          subtitle2: FonteCustom.subtitle2,
          bodyText1: FonteCustom.bodyText1,
          bodyText2: FonteCustom.bodyText2,
          button: FonteCustom.button,
          caption: FonteCustom.caption,
          overline: FonteCustom.overline,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 30),
            ),
            textStyle: MaterialStateProperty.all(
                FonteCustom.caption.copyWith(fontWeight: FontWeight.w600)),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ),
      );

  static get lightTheme => ThemeData(
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: CorLight.primary,
            onPrimary: CorLight.textHighlight,
            secondary: CorLight.cardBackground,
            onSecondary: CorLight.textHighlight,
            error: Colors.red,
            onError: CorLight.textHighlight,
            background: CorLight.scaffoldBackground,
            onBackground: CorLight.textHighlight,
            surface: CorLight.cardBackground,
            onSurface: CorLight.bodyText),
        primaryColor: CorLight.primary,
        scaffoldBackgroundColor: CorLight.scaffoldBackground,
        appBarTheme:
            AppBarTheme(color: CorLight.scaffoldBackground, elevation: 0),
        cardColor: CorLight.cardBackground,
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(16.0)),
        highlightColor: CorLight.textHighlight,
        textTheme: TextTheme(
          headline1: FonteCustom.headline1,
          headline2: FonteCustom.headline2,
          headline3: FonteCustom.headline3,
          headline4: FonteCustom.headline4,
          headline5: FonteCustom.headline5,
          headline6: FonteCustom.headline6,
          subtitle1: FonteCustom.subtitle1,
          subtitle2: FonteCustom.subtitle2,
          bodyText1: FonteCustom.bodyText1,
          bodyText2: FonteCustom.bodyText2,
          button: FonteCustom.button,
          caption: FonteCustom.caption,
          overline: FonteCustom.overline,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 30),
            ),
            textStyle: MaterialStateProperty.all(
                FonteCustom.caption.copyWith(fontWeight: FontWeight.w600)),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ),
      );
}
