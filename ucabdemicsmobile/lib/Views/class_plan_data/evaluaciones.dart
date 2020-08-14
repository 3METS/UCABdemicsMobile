import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Middleware/asignatura/datos_evaluaciones.dart';

class Evaluaciones extends StatelessWidget {
  final String nrc;

  Evaluaciones({this.nrc}) : assert(nrc != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: _crearItemsEvaluaciones(),
      ),
    );
  }

  List<Widget> _crearItemsEvaluaciones() {
    List<Widget> lista = new List<Widget>();
    List<Widget> listaEvaluaciones = new List<Widget>();
    List<Evaluacion> evaluaciones = Evaluacion.getEvaluaciones(nrc);

    for (Evaluacion item in evaluaciones) {
      final tempWidget = ListTile(
          contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
          title: Text(
            item.nombre,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            item.porcentaje + ' - ' + item.fecha,
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                fontWeight: FontWeight.w400),
          ),
          trailing: PopupMenuButton<Object>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey[700],
              size: 30.0,
            ),
            onSelected: (Object valor) {
              print(valor);
            },
            itemBuilder: (context) {
              var list = List<PopupMenuEntry<Object>>();
              list.add(PopupMenuItem<String>(
                value: 'Editar',
                child: ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Editar'),
                ),
              ));
              list.add(PopupMenuDivider(
                height: 10.0,
              ));
              list.add(PopupMenuItem<String>(
                value: 'Eliminar',
                child: ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Eliminar'),
                ),
              ));
              return list;
            },
          ));
      listaEvaluaciones.add(tempWidget);
      listaEvaluaciones.add(Divider(
        indent: 20.0,
        endIndent: 20.0,
      ));
    }
    listaEvaluaciones.removeLast();

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
                  children: listaEvaluaciones,
                )))));
    return lista;
  }
}
