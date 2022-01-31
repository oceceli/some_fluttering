import 'package:flutter/material.dart';
import 'package:onboarding/consts/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
      title: 'Yemek sana gelsin',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
