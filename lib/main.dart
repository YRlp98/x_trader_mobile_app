import 'package:flutter/material.dart';
import 'package:x_trader/pages/dashboard_page.dart';
import 'package:x_trader/theme/colors.dart';

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
      home: DashboardPage(),
    );
  }
}
