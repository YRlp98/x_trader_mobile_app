import 'package:flutter/material.dart';

import 'home.dart';
import 'theme/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X Trader',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
