import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_code/config/routes/routes_name.dart';
import 'package:flutter_bloc_clean_code/views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(body: Center(child: Text("No route generated")));
          },
        );
    }
  }
}
