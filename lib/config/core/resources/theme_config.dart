// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/font_size.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';
import 'package:markett/config/core/resources/value.config.dart';


ThemeData getApplicationTheme() {
  return ThemeData(
    // colors of the app
    scaffoldBackgroundColor: ColorManager.white,
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    backgroundColor: ColorManager.white,
    disabledColor: ColorManager.grey1,
    accentColor: ColorManager.grey,
    // ripple color
    splashColor: ColorManager.primary.withOpacity(0.3),

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColorManager.transparent,
      elevation: AppSize.s0,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
        color: ColorManager.primary,
        fontSize: FontSize.s16,
      ),
      iconTheme: IconThemeData(color: ColorManager.primary),
      systemOverlayStyle: SystemUiOverlayStyle(
        //<-- SEE HERE
        // Status bar color
        statusBarColor: Colors.green,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s16,
      ),
      subtitle1: getMediumStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s14,
      ),
      subtitle2: getMediumStyle(
        color: ColorManager.primary,
        fontSize: FontSize.s14,
      ),
      caption: getRegularStyle(color: ColorManager.darkGrey),
      bodyText1: getRegularStyle(color: ColorManager.darkGrey),
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      // hintStyle: getRegularStyle(
      //   // color: ColorManager.lightGrey.withOpacity(0.5),
      //   fontSize: 14,
      // ),
      suffixStyle: TextStyle(color: ColorManager.primary),
      prefixStyle: TextStyle(color: ColorManager.primary),
      labelStyle: getRegularStyle(
        color: ColorManager.lightGrey.withOpacity(0.5),
        fontSize: 15,
      ),
      errorStyle: getRegularStyle(color: ColorManager.error),
      // borders
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey.withOpacity(0.3),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          // width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      // prefix
      prefixIconColor: ColorManager.primary,
      // surfix
      suffixIconColor: ColorManager.primary,
    ),
  );
}
