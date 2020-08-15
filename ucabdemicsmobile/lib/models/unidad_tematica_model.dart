class UnidadTematica{
  int _tema;
  int _descripcion;
  List <String> _subtemas;

  UnidadTematica(parsedJson){
    this._tema = parsedJson['tema'];
    this._descripcion = parsedJson['descripcion'];
    this._subtemas = parsedJson['subtemas'];
  }
}