import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Middleware/asignatura/datos_competencias.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

class Competencias extends StatelessWidget {
  final String nrc;

  Competencias({this.nrc}) : assert(nrc != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: _crearItemsCompetencia(context),
      ),
    );
  }

  List<Widget> _crearItemsCompetencia(BuildContext context) {
    List<Widget> lista = new List<Widget>();

    List<Competencia> listaContenidos = Competencia.getCompetencias(nrc);

    for (Competencia itemContenido in listaContenidos) {
      List<Widget> listaUnidades = new List<Widget>();

      lista.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 40.0,
          ),
          Text(
            itemContenido.numero,
            style: TextStyle(
                fontSize: 24, color: myBlue[4], fontWeight: FontWeight.w800),
          ),
        ],
      ));
      lista.add(SizedBox(height: 5.0));
      lista.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 50.0,
          ),
          Text(
            itemContenido.contenido,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                fontWeight: FontWeight.w400),
          ),
        ],
      ));

      for (Unidad itemUnidad in itemContenido.unidades) {
        List<Widget> listaAtributos = new List<Widget>();
        bool stateUnidad = true;
        for (Atributo itemAtributo in itemUnidad.atributos) {
          final tempWidget = ListTile(
              contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
              title: Text(
                itemAtributo.numero,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                itemAtributo.contenido,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400),
              ),
              leading: Icon(
                Icons.check_circle_outline,
                color: Colors.white,
                size: 30.0,
              ),
              trailing: itemAtributo.logrado == true
                  ? Icon(
                      Icons.check_circle_outline,
                      color: myGreen,
                      size: 30.0,
                    )
                  : Icon(
                      Icons.error_outline,
                      color: myYellow,
                      size: 30.0,
                    ));
          listaAtributos.add(tempWidget);
          stateUnidad = stateUnidad && itemAtributo.logrado;
        }
        listaUnidades.add(Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              itemUnidad.numero,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              itemUnidad.contenido,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w400),
            ),
            leading: stateUnidad == true
                ? Icon(
                    Icons.check_circle_outline,
                    color: myGreen,
                    size: 30.0,
                  )
                : Icon(
                    Icons.error_outline,
                    color: myYellow,
                    size: 30.0,
                  ),
            children: listaAtributos,
          ),
        ));
        listaUnidades.add(Divider(
          indent: 20.0,
          endIndent: 20.0,
        ));
      }

      listaUnidades.removeLast();

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
                    children: listaUnidades,
                  )))));
    }

    return lista;
  }
}
