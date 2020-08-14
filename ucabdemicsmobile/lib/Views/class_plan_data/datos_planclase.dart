import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Middleware/asignatura/asignatura.dart';
import 'package:ucabdemicsmobile/Views/class_plan_data/competencias.dart';
import 'package:ucabdemicsmobile/Views/class_plan_data/contenidos.dart';
import 'package:ucabdemicsmobile/Views/class_plan_data/evaluaciones.dart';
import 'package:ucabdemicsmobile/sources/Components/asignatura_appbar.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

class DatosPlanClase extends StatefulWidget {
  final String nrc;

  const DatosPlanClase({Key key, @required this.nrc}):assert(nrc!=null),super(key: key);
  
  @override
  _DatosPlanClaseState createState() => _DatosPlanClaseState();
}

class _DatosPlanClaseState extends State<DatosPlanClase> {

  String _option = 'contenido';

  Widget _selectCenterBody(){

    switch(_option) {
      case 'contenido': {
        return Contenidos(nrc:widget.nrc);
      }
      case 'evaluaciones': {
        return Evaluaciones(nrc:widget.nrc);
      }
      default: {
        return Competencias(nrc:widget.nrc);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AsignaturaAppBar(
          title: Asignatura.getNombre(widget.nrc),
          titleColor: Colors.white,
          backgroundColor: myBlue[4],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(widget.nrc);
          },
          child: Icon(Icons.add),
          backgroundColor: myYellow,
        ),
        body:
          Column(
            children: <Widget>[
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){},
                    child: Text('Contenido'),
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('Evaluaciones'),
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('Competencias'),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              _selectCenterBody(),
            ],
          ),
        
    );
  }
}