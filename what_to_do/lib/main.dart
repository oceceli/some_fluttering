import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_do/states/list_state.dart';
import 'package:what_to_do/view/pages/app.dart';

void main() {
  runApp(ChangeNotifierProvider<ListState>(
    create: (BuildContext context) {
      return ListState();
    },
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What to do',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0Xff9B2226),
          secondary: Color(0XffBB3E03),
          background: Color(0XffE9D8A6),
          surface: Color(0Xff94D2BD),
          onSurface: Color(0Xff005F73),
        ),
      ),
      home: const App(),
    );
  }
}
