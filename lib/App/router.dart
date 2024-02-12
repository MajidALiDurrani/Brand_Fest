import 'package:brand_fest/Home/screens/home.dart';
import 'package:brand_fest/Home/screens/rating_screen.dart';
import 'package:flutter/material.dart';

class Approuter {
  static const String home = '/home';
  static const String rating = '/rating';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
          settings: settings,
        );
      case rating:
        return MaterialPageRoute(
            builder: ((context) => const RatingScreen()), settings: settings);
    }
    return null;
  }
}
