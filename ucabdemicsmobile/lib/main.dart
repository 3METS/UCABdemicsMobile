import 'package:flutter/material.dart';

import 'package:ucabdemicsmobile/Views/Login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UCABdemics Test',
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}