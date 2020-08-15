import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Middleware/semestre/semestre.dart';
import 'package:ucabdemicsmobile/sources/Components/main_appbar.dart';
import 'package:ucabdemicsmobile/sources/Components/tracing_card.dart';

import '../../sources/Constants/constants.dart';

class Tracing extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TracingState();
  }
}

class _TracingState extends State<Tracing> {

  String _selectedSemestre = Semestre.getSemestres()[0].value;
  int _index = 0;

  @override
  Widget   build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: "Seguimiento",
        titleColor: myBlue[4],
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(

          children: <Widget>[
            _crearDropDownSemestre(),
            TracingCard(
              nrc: "15633",
            )
          ],
        ),
      ),
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



}