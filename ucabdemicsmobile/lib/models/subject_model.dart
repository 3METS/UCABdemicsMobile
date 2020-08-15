import 'package:ucabdemicsmobile/models/unidad_tematica_model.dart';
import 'package:ucabdemicsmobile/models/weekly_hours_model.dart';

class Subject {
  String _id;
  String _codigo;
  String _nombreAsignatura;
  String _carrera;
  String _departamento;
  String _regimen;
  int _uc;
  String _semestre;
  String _tipoAsignatura;
  WeeklyHours _horasSemanales;
  List <String> _asignaturasAporte;
  String _justificacion;
  List <UnidadTematica> _unidadTematica;
  String _estrategiaAprendizaje;
  String _estrategiaEvaluacion;


  Subject(parsedJson) {
    this._id = parsedJson['_id'];
    this._codigo = parsedJson['codigo'];
    this._nombreAsignatura = parsedJson['nombreAsignatura'];
    this._carrera = parsedJson['carrera'];
    this._departamento = parsedJson['departamento'];
    this._regimen = parsedJson['regimen'];
    this._uc = parsedJson['uc'];
    this._semestre = parsedJson['semestre'];
    this._tipoAsignatura = parsedJson['tipoAsignatura'];
    this._horasSemanales = parsedJson['horasSemanales'];
    this._asignaturasAporte = parsedJson['asignaturasAporte'];
    this._justificacion = parsedJson['justificacion'];
    this._unidadTematica = parsedJson['unidadTematica'];
    this._estrategiaAprendizaje = parsedJson['estrategiaAprendizaje'];
    this._estrategiaEvaluacion = parsedJson['estrategiaEvaluacion'];
  }
}