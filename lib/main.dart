import 'package:brand_fest/App/router.dart';
import 'package:brand_fest/Home/screens/home.dart';
import 'package:brand_fest/Home/screens/login_screen.dart';
import 'package:brand_fest/Utels/Rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyBp9Pq6QPO_IMMCdsYtzhgZJkTZXoV7TA0',
    appId: '1:896497644817:android:aa246128af78b75e8dc8b0',
    messagingSenderId: '896497644817',
    projectId: 'brand-fest',
    storageBucket: 'brand-fest.appspot.com',
  ));

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
        home: Login());
  }
}
