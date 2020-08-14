import 'package:flutter/material.dart';

import 'sources/Components/navigation_bar.dart';
import 'sources/Components/navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UCABdemics Test',
      debugShowCheckedModeBanner: false,
      home: Navigation()
    );
  }
}