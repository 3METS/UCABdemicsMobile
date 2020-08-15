import 'package:flutter/material.dart';
import '../../sources/Components/main_appbar.dart';
import '../../sources/Constants/constants.dart';
import '../../Middleware/semestre/semestre.dart';
import '../../Middleware/asignatura/datos_asignatura.dart';
import '../../sources/Components/semestre_card.dart';

class ClassPlan extends StatefulWidget {

  ClassPlan({Key key}) : super(key: key);

  @override
  _ClassPlanState createState() => _ClassPlanState();
}

class _ClassPlanState extends State<ClassPlan> {
  String _selectedSemestre = Semestre.getSemestres()[0].value;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(
          title: 'Planes de clase',
          titleColor: myBlue[4],
          backgroundColor: Colors.white,),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _crearDropDownSemestre(),
              SizedBox(height: 40.0),
              _crearListAsignaturas(),
            ],
          )),
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown() {
    List<DropdownMenuItem<String>> lista = new List();

    Semestre.getSemestres().forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element.value),
        value: element.value,
      ));
    });
    return lista;
  }

  Widget _crearDropDownSemestre() {
    return DropdownButton(
      value: _selectedSemestre,
      items: getOpcionesDropDown(),
      onChanged: (option) {
        setState(() {
          _selectedSemestre = option;
        });
      },
    );
  }

  Widget _crearListAsignaturas() {
    return Center(
      child: SizedBox(
        height: 500, // card height
        child: PageView.builder(
          itemCount: DatosAsignatura.getCantidadAsignaturas(_selectedSemestre),
          controller: PageController(viewportFraction: 0.7),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 1 : 0.9,
              child: SemestreCard(
                selectedSemestre: _selectedSemestre,
                value: i,
              ),
            );
          },
        ),
      ),
    );
  }
}
