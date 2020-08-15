class UnidadTematica{
  int _tema;
  int _descripcion;
  List <String> _subtemas;

  UnidadTematica(parsedJson){
    this._tema = parsedJson['tema'];
    this._descripcion = parsedJson['descripcion'];
    List <String> subtemas = [];
    for (int i = 0; i < parsedJson['subtemas'].length; i++){
      String result = parsedJson['subtemas'][i];
      subtemas.add(result);
    }
    this._subtemas = subtemas;
  }
}