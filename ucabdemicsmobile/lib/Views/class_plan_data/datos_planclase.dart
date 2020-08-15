import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Middleware/asignatura/asignatura.dart';
import 'package:ucabdemicsmobile/Views/NewTest/newtest_page.dart';
import 'package:ucabdemicsmobile/Views/class_plan_data/competencias.dart';
import 'package:ucabdemicsmobile/Views/class_plan_data/contenidos.dart';
import 'package:ucabdemicsmobile/Views/class_plan_data/evaluaciones.dart';
import 'package:ucabdemicsmobile/sources/Components/asignatura_appbar.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

class DatosPlanClase extends StatefulWidget {
  final String nrc;

  const DatosPlanClase({Key key, @required this.nrc})
      : assert(nrc != null),
        super(key: key);

  @override
  _DatosPlanClaseState createState() => _DatosPlanClaseState();
}

class _DatosPlanClaseState extends State<DatosPlanClase> {
  String _option = 'Contenido';
  bool isEvaluacionesDisabled = false;
  bool isContenidosDisabled = true;
  bool isCompetenciasDisabled = false;

  Widget _selectCenterBody() {
    switch (_option) {
      case 'Contenido':
        {
          return Contenidos(nrc: widget.nrc);
        }
      case 'Evaluaciones':
        {
          return Evaluaciones(nrc: widget.nrc);
        }
      default:
        {
          return Competencias(nrc: widget.nrc);
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
          final route = MaterialPageRoute(builder: (context) => NewTestPage());
          Navigator.push(context, route);
        },
        child: Icon(Icons.add),
        backgroundColor: myYellow,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20.0),bottomLeft: Radius.circular(20.0))),
                    color: myGrey[1],
                    onPressed: isContenidosDisabled
                        ? null
                        : () {
                            setState(() {
                              _option = 'Contenido';
                              isCompetenciasDisabled = false;
                              isEvaluacionesDisabled = false;
                              isContenidosDisabled = true;
                            });
                          },
                    disabledColor: myGrey[2],
                    child: Text(
                      'Contenido',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  child: FlatButton(
                    color: myGrey[1],
                    onPressed: isEvaluacionesDisabled
                        ? null
                        : () {
                            setState(() {
                              _option = 'Evaluaciones';
                              isCompetenciasDisabled = false;
                              isEvaluacionesDisabled = true;
                              isContenidosDisabled = false;
                            });
                          },
                    disabledColor: myGrey[2],
                    child: Text(
                      'Evaluaciones',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight:Radius.circular(20.0),bottomRight: Radius.circular(20.0))),
                    color: myGrey[1],
                    onPressed: isCompetenciasDisabled
                        ? null
                        : () {
                            setState(() {
                              _option = 'Competencias';
                              isCompetenciasDisabled = true;
                              isEvaluacionesDisabled = false;
                              isContenidosDisabled = false;
                            });
                          },
                    disabledColor: myGrey[2],
                    child: Text(
                      'Competencias',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            _selectCenterBody(),
          ],
        ),
      ),
    );
  }
}
