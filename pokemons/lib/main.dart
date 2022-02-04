import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_info/views/pages/poke_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: () => MaterialApp(
        title: 'Pokemons',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PokeMainPage(),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return widget!;
        },
      ),
    );
  }
}
