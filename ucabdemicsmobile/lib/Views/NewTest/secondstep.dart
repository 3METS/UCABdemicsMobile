import 'package:flutter/material.dart';

class SecondStep extends StatefulWidget {
  SecondStep({Key key}) : super(key: key);

  @override
  _SecondStepState createState() => _SecondStepState();
}

class _SecondStepState extends State<SecondStep> {

  List<String> lItems = [];
  final TextEditingController eCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Fechas de Evaluación", style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0,),
          TextField(
            controller: eCtrl,
            onSubmitted: (text) {
              lItems.add(text);  // Append Text to the list
              eCtrl.clear();     // Clear the Text area
              setState(() {});   // Redraw the Stateful Widget
            },
          ),
          SizedBox(height: 20.0,),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: lItems.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Text(lItems[Index]);
            }
          ),
        ],
      ),
    );
  }
}