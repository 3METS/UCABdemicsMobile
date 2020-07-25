import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/sources/Components/main_appbar.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

// ignore: must_be_immutable
class Evaluaciones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Algoritmos I',
        titleColor: Colors.white,
        backgroundColor: myBlue[4],
      )
    );
  }
}
