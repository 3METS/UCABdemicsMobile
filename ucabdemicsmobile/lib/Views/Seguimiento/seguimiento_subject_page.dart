import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class SeguimientoSubjectPage extends StatefulWidget {
  final String subjectName;

  SeguimientoSubjectPage({Key key, @required this.subjectName}) : super(key: key);

  @override
  _SeguimientoSubjectPageState createState() => _SeguimientoSubjectPageState();
}

class _SeguimientoSubjectPageState extends State<SeguimientoSubjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlue[4],
        title: Text(widget.subjectName),
        bottomOpacity: 0.0,
        elevation: 0.0,
        bottom: PreferredSize(
          child: Container(
            color: Colors.orange,
            height: 4.0,
          ),
          preferredSize: Size.fromHeight(4.0)
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}