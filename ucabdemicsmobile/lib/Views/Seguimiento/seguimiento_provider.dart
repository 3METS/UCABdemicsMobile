import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/services.dart' show rootBundle;

class _SeguimientoProvider{
  List<dynamic> opciones = [];

  _SeguimientoProvider(){
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('lib/sources/data/seguimiento_data.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['cardAsignatura'];

    return opciones;
  }
}

final seguimientoProvider = _SeguimientoProvider();