import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';
import 'package:toku/screens/login_page.dart';
import 'package:toku/screens/signUp_page.dart';

void main() async {
  runApp(const TokuApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData.light(),
      routes: {
        //'/': (context) => const Auth(),
        'home_page': (context) => const HomePage(),
        'signUp_page': (context) => SignUpPage(),
        'login_page': (context) => const LoginPage(),
      },
    );
  }
}
