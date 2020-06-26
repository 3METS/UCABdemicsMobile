import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Views/Login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFF2E7D32),
      ));
    return MaterialApp(
      title: 'UCABdemics Test',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

