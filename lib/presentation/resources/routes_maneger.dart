import 'package:booking/presentation/Login/register_screen.dart';
import 'package:booking/presentation/flight/confirm_flight.dart';
import 'package:booking/presentation/flight/flight_search_result.dart';
import 'package:booking/presentation/resources/strings_maneger.dart';
import 'package:booking/presentation/review/review.dart';
import 'package:booking/presentation/tour/tour.dart';
import 'package:booking/presentation/user_screen/user_screen.dart';
import 'package:flutter/material.dart';
import '../../layout/app_layout.dart';
import '../../splash_screen/splash_screen.dart';
import '../Login/login_screen.dart';
import '../bus/bus_screen.dart';
import '../flight/flight_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String appLayout = "/appLayout";
  static const String homeScreen = "/homeScreen";
  static const String loginScreen = "/loginScreen";
  static const String registerScreen = "/registerScreen";
  static const String flightScreen = "/flightScreen";
  static const String flightSearchScreen = "/flightSearchScreen";
  static const String busScreen = "/busScreen";
  static const String tourScreen = "/tourScreen";
  static const String reviewScreen = "/reviewScreen";
  static const String userScreen = "/userScreen";
  static const String confirmFlight = "/confirmFlight";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.appLayout:
        return MaterialPageRoute(builder: (_) => AppLayout());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const FlightScreen());

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case Routes.busScreen:
        return MaterialPageRoute(builder: (_) => BusScreen());
      case Routes.confirmFlight:
        return MaterialPageRoute(builder: (_) => ConfirmFlight());
      case Routes.flightScreen:
        return MaterialPageRoute(builder: (_) => FlightScreen());
      case Routes.flightSearchScreen:
        return MaterialPageRoute(builder: (_) => FlightSearchResult());
      case Routes.tourScreen:
        return MaterialPageRoute(builder: (_) => TourScreen());
      case Routes.reviewScreen:
        return MaterialPageRoute(builder: (_) => ReviewScreen());
      case Routes.userScreen:
        return MaterialPageRoute(builder: (_) => UserScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings
                    .noRoutesFound), // todo move this string to strings manager
              ),
              body: const Center(
                  child: Text(AppStrings
                      .noRoutesFound)), // todo move this string to strings manager
            ));
  }
}
