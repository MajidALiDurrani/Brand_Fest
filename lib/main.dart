import 'package:brand_fest/App/router.dart';
import 'package:brand_fest/Home/screens/home.dart';
import 'package:brand_fest/Home/screens/login_screen.dart';
import 'package:brand_fest/Home/screens/rating_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: (settings) {
          return Approuter.onGenerateRoute(settings);
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const Login());
  }
}
