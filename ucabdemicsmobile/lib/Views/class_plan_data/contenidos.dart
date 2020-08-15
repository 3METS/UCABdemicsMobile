import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Middleware/asignatura/datos_contenido.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

// ignore: must_be_immutable
class Contenidos extends StatelessWidget {
  final String nrc;

  Contenidos({this.nrc}) : assert(nrc != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: _crearItemsContenido(),
      ),
    );
  }

  List<Widget> _crearItemsContenido() {
    List<Widget> lista = new List<Widget>();
    List<Tema> temas = Tema.getAsignaturas(nrc);

    for (Tema item in temas) {
      lista.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 40.0,
          ),
          Text(
            item.numero + ': ',
            style: TextStyle(
                fontSize: 24, color: myBlue[4], fontWeight: FontWeight.w800),
          ),
          Text(
            item.contenido,
            style: TextStyle(
                fontSize: 24, color: myBlue[4], fontWeight: FontWeight.w800),
          ),
        ],
      ));

      List<Widget> listaSubtemas = new List<Widget>();

      for (SubTema subtema in item.subtemas) {
        final tempWidget = ListTile(
            contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
            title: Text(
              subtema.numero,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              subtema.contenido,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w400),
            ),
            trailing: subtema.logrado == true
                ? Icon(
                    Icons.check_circle_outline,
                    color: myGreen,
                    size: 35.0,
                  )
                : Icon(
                    Icons.error_outline,
                    color: myYellow,
                    size: 35.0,
                  ));
        listaSubtemas.add(tempWidget);
        listaSubtemas.add(Divider(
          indent: 20.0,
          endIndent: 20.0,
        ));
      }
      listaSubtemas.removeLast();

      lista.add(Container(
          padding:
              EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[350]),
                  borderRadius: BorderRadius.circular(20)),
              child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: listaSubtemas,
                  )))));
    }

    return lista;
  }
}
