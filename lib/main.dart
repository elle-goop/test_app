import 'package:flutter/material.dart';
import 'package:test_app/screens/fifth_page.dart';
import 'package:test_app/screens/first_page.dart';
import 'package:test_app/screens/sixth_page.dart';
import 'package:test_app/theme/theme.dart';
import 'package:test_app/utils/const.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Const.appName,
      theme: appTheme,
      home: FirstPage(),
    );
  }
}
