import 'package:booking/presentation/resources/styles_maneger.dart';
import 'package:booking/presentation/resources/value_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_maneger.dart';
import 'font_maneger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      scaffoldBackgroundColor: ColorManager.white,
      // main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey,

      splashColor: ColorManager.lightPrimary.withOpacity(.5),
      // ripple effect color

      // card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4),

      // app bar theme
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.primary,
              statusBarIconBrightness: Brightness.light),
          color: ColorManager.primary,
          elevation: AppSize.s0,
          shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getRegularStyle(

              fontSize: FontSize.s22, color: ColorManager.white)),

      // button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary.withOpacity(.5)),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s17),
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
        ),
      ),
      // Text button them
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),

      )),
      // text theme
      textTheme: TextTheme(
          displayLarge: getSemiBoldStyle(
              color: ColorManager.white, fontSize: FontSize.s30),
          headlineLarge: getBoldStyle(
            color: ColorManager.white,
            fontSize: FontSize.s25,
          ),
          headlineMedium: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s22),
          headlineSmall: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s18),
          titleLarge:
              getBoldStyle(color: ColorManager.white, fontSize: FontSize.s25),
          titleMedium: getMediumStyle(
              color: ColorManager.black, fontSize: FontSize.s15),
          titleSmall: getRegularStyle(
              color: ColorManager.black, fontSize: FontSize.s12),
          bodyLarge: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s18),
          bodySmall: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s12)),

      // input decoration theme (text form field)

      inputDecorationTheme: InputDecorationTheme(
          // content padding
          contentPadding: const EdgeInsets.all(AppPadding.p12),
          // hint style
          hintStyle: getRegularStyle(
              color: ColorManager.grey, fontSize: FontSize.s14),
          labelStyle:
              getMediumStyle(color: ColorManager.black, fontSize: FontSize.s14),
          prefixStyle: getRegularStyle(
              color: ColorManager.grey, fontSize: FontSize.s14),
          prefixIconColor: ColorManager.grey,
          errorStyle: getRegularStyle(color: ColorManager.error),

          // enabled border style
          enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),

          // focused border style
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),

          // error border style
          errorBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.error, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          // focused border style
          focusedErrorBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8)))),

      //bottom nav
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: ColorManager.white),
        selectedItemColor: ColorManager.white,
        unselectedItemColor: ColorManager.white.withOpacity(.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorManager.primary,
      ),
  iconTheme: IconThemeData(
      color: ColorManager.primary,
  ),
    listTileTheme: ListTileThemeData(
      iconColor: ColorManager.primary
    )

  );
}
