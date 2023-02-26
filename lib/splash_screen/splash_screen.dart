import 'dart:async';

import 'package:booking/presentation/resources/font_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../componaent/component.dart';
import '../network/remote/cache_helper.dart';
import '../presentation/resources/assets_maneger.dart';
import '../presentation/resources/color_maneger.dart';
import '../presentation/resources/constant_maneger.dart';
import '../presentation/resources/responsive.dart';
import '../presentation/resources/routes_maneger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late String route;

  goNext() {
/*    token = CacheHelper.getDate(key: 'token');
    if (token != null) {
      route =  Routes.appLayout;
    } else {
      route = Routes.loginScreen;
    }*/
    Navigator.pushReplacementNamed(context, Routes.appLayout);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageAssets.splashLogo),
                  fit: BoxFit.cover)),
          child: Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 70,
                  width: 220,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {
                        navigateToAndReplacement(context, Routes.loginScreen);
                      },
                      child: Text(
                        'Get Start',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.black),
                      )))),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
