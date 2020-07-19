import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/NewTest/newtest_page.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class SubjectPage extends StatefulWidget {
  SubjectPage({Key key}) : super(key: key);

  @override
  _SubjectPageState createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sistema de Bases I"), backgroundColor: myBlue[4],),
      body: ListView(
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final route = MaterialPageRoute(
                builder: ( context ) => NewTestPage()
              );
              Navigator.push(context, route);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}