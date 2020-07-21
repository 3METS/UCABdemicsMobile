import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/class_plan/class_plan.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class ThirdStep extends StatefulWidget {
  ThirdStep({Key key}) : super(key: key);

  @override
  _ThirdStepState createState() => _ThirdStepState();
}

class _ThirdStepState extends State<ThirdStep> {

  Widget temas(){
    return ExpansionTile(
      title: Text("Tema 1"),
      children: temasList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Contenidos a Evaluar", style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0,),
          Container(
            child: temas(),
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(color: Colors.grey,),
              borderRadius: BorderRadius.all(Radius.circular(06)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}