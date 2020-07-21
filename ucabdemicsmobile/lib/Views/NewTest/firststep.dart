import 'package:flutter/material.dart';

class FirstStep extends StatefulWidget {
  FirstStep({Key key}) : super(key: key);

  @override
  _FirstStepState createState() => _FirstStepState();
}

class _FirstStepState extends State<FirstStep> {
  String dropdownValue = 'One';

  Widget dropmenu(){
    return DropdownButton<String>(
      isExpanded: true,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      hint: Text("Tipo de Evaluación"),
      underline: Container(),
      items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
    );
  }

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
                SizedBox(height: 14.0,),
                Container(
                  child: dropmenu(),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(06))
                  ),
                ),
                SizedBox(height: 14.0,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Técnica',
                  ),
                ),
                SizedBox(height: 14.0,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Instrumento',
                  ),
                ),
                SizedBox(height: 14.0,),
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

