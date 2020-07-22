import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/sources/Constants/temas.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class ThirdStep extends StatefulWidget {
  ThirdStep({Key key}) : super(key: key);

  @override
  _ThirdStepState createState() => _ThirdStepState();
}

class _ThirdStepState extends State<ThirdStep> {

  @override
  Widget build(BuildContext context) {

    List<TemasySubtemasTile> temasList = [
      TemasySubtemasTile(subtema: "Subtema 1.1", tituloSubtema: "Titulo Subtema"),
      TemasySubtemasTile(subtema: "Subtema 1.2", tituloSubtema: "Titulo Subtema"),
      TemasySubtemasTile(subtema: "Subtema 1.3", tituloSubtema: "Titulo Subtema"),
    ];

    Widget temas(String tema){
      return ExpansionTile(
        title: Text(tema),
        children: temasList,
      );
    }

    Widget temaTile(String tema){
      return Container(
        child: temas(tema),
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
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
      );
    }

    return Container(
      child: Column(
        children: <Widget>[
          Text("Contenidos a Evaluar", style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0,),
          temaTile("Tema 1"),
          SizedBox(height: 20.0,),
          temaTile("Tema 2"),
          SizedBox(height: 20.0,),
          temaTile("Tema 3"),
        ],
      ),
    );
  }
}