import 'package:contador_app/src/pages/contador_page.dart';
// import 'package:contador_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
      //child: HomePage(),
      child: ContadorPage(),
    ));
  }
}
