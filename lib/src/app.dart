import 'package:contador_flutter/src/pages/contador_page.dart';
import 'package:flutter/material.dart';
// import 'package:contador_flutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: ContadorPage(),
      )
    );
  }

}