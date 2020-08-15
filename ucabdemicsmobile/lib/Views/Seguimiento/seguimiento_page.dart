import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/Seguimiento/seguimiento_item_card.dart';
import 'package:ucabdemicsmobile/Views/Seguimiento/seguimiento_provider.dart';
import 'package:ucabdemicsmobile/sources/Components/main_appbar.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

class SeguimientoPage extends StatefulWidget {
  SeguimientoPage({Key key}) : super(key: key);

  @override
  _SeguimientoPageState createState() => _SeguimientoPageState();
}

class _SeguimientoPageState extends State<SeguimientoPage> {

  Widget _listCards(){
    return FutureBuilder(
      future: seguimientoProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
          shrinkWrap: true,
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  _listaItems( List<dynamic> data){

    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = SeguimientoItemCard(
        subjectName: opt['nombre'],
        nrc: opt['nrc'],
        actualTema: opt['tema_actual'],
        subjectPercentaje: opt['porcentaje'],
      );

      // final widgetTemp = ListTile(
      //   title: Text(opt['nombre']),
      // );

      opciones.add(widgetTemp);
    });
    return opciones;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Seguimiento',
        backgroundColor: Colors.white,
        titleColor: myBlue[4],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.04),
          children: <Widget>[
            _listCards(),
          ],
        ),
      ),
    );
  }
}

