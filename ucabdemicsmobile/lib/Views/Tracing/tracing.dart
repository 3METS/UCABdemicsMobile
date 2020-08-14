import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/sources/Components/main_appbar.dart';
import 'package:ucabdemicsmobile/sources/Components/tracing_card.dart';

import '../../sources/Constants/constants.dart';

class Tracing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: "Seguimiento",
        titleColor: myBlue[4],
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(

          children: <Widget>[
            TracingCard(
              nrc: "15633",
            )
          ],
        ),
      ),
    );
  }

}