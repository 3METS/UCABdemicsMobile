import 'package:flutter/material.dart';

import 'package:ucabdemicsmobile/Views/class_plan_data/datos_planclase.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';
import '../../Middleware/asignatura/datos_asignatura.dart';

// ignore: must_be_immutable
class SemestreCard extends StatelessWidget {
  String selectedSemestre;
  int value;

  SemestreCard({this.selectedSemestre, this.value})
      : assert(selectedSemestre != null),
        assert(value != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: myBlue[1],
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => DatosPlanClase(nrc:DatosAsignatura.getAsignaturas(selectedSemestre)[value].nrc));
          Navigator.push(context, route);
        },
        child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  DatosAsignatura.getAsignaturas(selectedSemestre)[value].nombre,
                  style: TextStyle(fontSize: 24,color: myBlue,fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height:15.0),
                Text(
                  'NRC: '+ DatosAsignatura.getAsignaturas(selectedSemestre)[value].nrc,
                  style: TextStyle(fontSize: 18,color: Colors.grey[600],fontWeight: FontWeight.w400),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height:15.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                        width: 0.8
                      ),
                    ),
                  ),
                ),
                SizedBox(height:35.0),
                Text(
                  'Semestre',
                  style: TextStyle(fontSize: 22,color: myGreen,fontWeight: FontWeight.w800),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height:15.0),
                Text(
                  DatosAsignatura.getSemestreEnLetra(DatosAsignatura.getAsignaturas(selectedSemestre)[value].semestre),
                  style: TextStyle(fontSize: 18,color:Colors.grey[600],fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height:25.0),
                Text(
                  'Evaluaciones',
                  style: TextStyle(fontSize: 22,color: myGreen,fontWeight: FontWeight.w800),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height:15.0),
                Text(
                  DatosAsignatura.getEvaluacionesEnLetra(DatosAsignatura.getAsignaturas(selectedSemestre)[value].nroEvaluaciones),
                  style: TextStyle(fontSize: 18,color: Colors.grey[600],fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height:25.0),
                Text(
                  'Delegado',
                  style: TextStyle(fontSize: 22,color: myGreen,fontWeight: FontWeight.w800),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height:15.0),
                Text(
                  DatosAsignatura.getAsignaturas(selectedSemestre)[value].delegado,
                  style: TextStyle(fontSize: 18,color: Colors.grey[600],fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
      ),
    );
  }
}
