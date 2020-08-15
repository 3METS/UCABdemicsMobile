import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'di/app_injector.dart';
import 'sources/Components/navigation_bar.dart';

//void main() => runApp(MyApp());

typedef Provider<T> = T Function();

void main() async {
  final container = await AppInjector.create();
  runApp(container.app);
}

@provide
class MyApp extends StatelessWidget {

  final Provider<Navigation> navigation;
  MyApp(this.navigation) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UCABdemics Test',
      debugShowCheckedModeBanner: false,
      home: navigation()
    );
  }
}

