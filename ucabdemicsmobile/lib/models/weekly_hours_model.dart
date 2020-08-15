class WeeklyHours{
  int _teoricas;
  int _practica_seminario;
  int _laboratorios;

  WeeklyHours(parsedJson){
    this._teoricas = parsedJson['teoricas'];
    this._practica_seminario = parsedJson['practica_seminario'];
    this._laboratorios = parsedJson['laboratorios'];
  }
}