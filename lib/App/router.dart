import 'dart:js';

import 'package:brand_fest/Home/screens/home.dart';
import 'package:brand_fest/Home/screens/rating_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Approuter {
  static const String home = '/home';
  static const String rating = '/rating';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case rating:
        return MaterialPageRoute(builder: (context) => const RatingScreen());
    }
    return null;
  }
}
