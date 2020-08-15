import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Middleware/Horario/datos_horario.dart';
import 'package:ucabdemicsmobile/Middleware/asignatura/asignatura.dart';
import '../../sources/Components/main_appbar.dart';
import '../../sources/Constants/constants.dart';
import '../../Middleware/semestre/semestre.dart';

class Horario extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HorarioState();
  }
}

class _HorarioState extends State<Horario> {
  String _selectedSemestre = Semestre.getSemestres()[0].value;
  String _selectedAsignatura = 'Todas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(
        title: 'Horario',
        titleColor: myBlue[4],
        backgroundColor: Colors.white,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _crearDropDownSemestre(),
                  _crearDropDownAsignatura(),
                ],
              ),
              SizedBox(height: 40.0),
              _crearTabla(),
            ],
          )),
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropDownSemestre() {
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
      items: getOpcionesDropDownSemestre(),
      onChanged: (option) {
        setState(() {
          _selectedSemestre = option;
          _selectedAsignatura = 'Todas';
        });
      },
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropDownAsignatura() {
    List<DropdownMenuItem<String>> lista = new List();

    lista.add(DropdownMenuItem(
      child: Text('Todas las asignaturas'),
      value: 'Todas',
    ));

    Asignatura.getAsignaturas(_selectedSemestre).forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return lista;
  }

  Widget _crearDropDownAsignatura() {
    return DropdownButton(
      value: _selectedAsignatura,
      items: getOpcionesDropDownAsignatura(),
      onChanged: (option) {
        setState(() {
          _selectedAsignatura = option;
        });
      },
    );
  }

  Widget _crearTabla() {
    return Expanded(
        child: ListView(
            scrollDirection: Axis.horizontal, children: generarContainers()));
  }

  List<Widget> generarContainers() {
    List<Widget> lista = new List<Widget>();

    final double longitud = 190;
    lista.add(Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[350]), color: myGrey[2]),
      width: 90.0,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: getCardsHoras()),
    ));

    for (int i = 0; i < 6; i++) {
      lista.add(Container(
          width: longitud,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey[350])),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: getCardsDias(i))));
    }
    return lista;
  }

  List<Widget> getCardsHoras() {
    List<Widget> lista = new List<Widget>();
    List<String> horas = DatosHorario.getHoras();

    for (String item in horas) {
      lista.add(Text(item,
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
              fontWeight: FontWeight.w800)));
    }
    return lista;
  }

  List<Widget> getCardsDias(int i) {
    List<Color> colores = <Color>[
      Colors.blue[100],
      Colors.green[100],
      Colors.red[100],
      Colors.yellow[100]
    ];
    List<Color> coloresAcentuados = <Color>[
      Colors.blue[800],
      Colors.green[800],
      Colors.red[800],
      Colors.yellow[800]
    ];
    double valorBloque = 34.7;
    int horaActual = 7;

    List<Widget> lista = new List<Widget>();
    List<String> dias = DatosHorario.getDias();
    List<DatosHorario> horarios =
        DatosHorario.getDatosHorario(this._selectedSemestre);
    List<String> asignaturas =
        Asignatura.getAsignaturas(this._selectedSemestre);

    lista.add(SizedBox(
      height: 10.0,
    ));

    lista.add(Text(dias[i],
        style: TextStyle(
            fontSize: 20, color: myBlue[4], fontWeight: FontWeight.w800)));

    lista.add(SizedBox(
      height: 10.0,
    ));

    for (DatosHorario item in horarios) {
      if (item.dia == dias[i] &&
          horaActual < 21 &&
          (_selectedAsignatura == item.nombreAsignatura ||
              _selectedAsignatura == 'Todas')) {
        lista.add(Container(
          height: (item.horaInicio - horaActual) * valorBloque,
        ));
        lista.add(Container(
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: colores[asignaturas.indexOf(item.nombreAsignatura)],
              ),
              height: (item.numHoras) * valorBloque,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(style: BorderStyle.solid,color: coloresAcentuados[asignaturas.indexOf(item.nombreAsignatura)],width: 8.0))
                ),
                child: Center(
                  child: ListTile(
                    title: Text(
                      item.nombreAsignatura,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      item.horaInicio.toString() +
                          ':00-' +
                          (item.numHoras + item.horaInicio).toString() +
                          ':00, ' +
                          item.aula,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )),
        ));
        horaActual = item.horaInicio + item.numHoras;
      }
    }
    return lista;
  }
}
