import 'package:vastraloka/screens/account_page.dart';
import 'package:vastraloka/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:vastraloka/screens/splash_page.dart';
import 'package:vastraloka/screens/change3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vastraloka',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashView(),
    );
  }
}
