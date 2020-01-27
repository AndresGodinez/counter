import 'package:flutter/material.dart';

import 'package:lesson5/src/pages/Home_page.dart';
import 'package:lesson5/src/pages/contador.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Contador()
      ),
    );
  }
}