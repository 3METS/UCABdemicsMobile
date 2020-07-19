import 'package:flutter/material.dart';

class FirstStep extends StatefulWidget {
  FirstStep({Key key}) : super(key: key);

  @override
  _FirstStepState createState() => _FirstStepState();
}

class _FirstStepState extends State<FirstStep> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
        children: <Widget>[
          Text("Información Básica", style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0,),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Evidencia',
                  ),
                ),
                SizedBox(height: 20.0,),
                
                SizedBox(height: 20.0,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Técnica',
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Instrumento',
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Porcentaje',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

