class Asignatura {
  String nombre;

  Asignatura(this.nombre);

  static String getNombre(String nrc) {
    switch (nrc) {
      case '25001':
        return 'Algoritmos y programación I';
      case '25002':
        return 'Sistema de Base de Datos I';
      case '25003':
        return 'Electiva:Calidad del Software';
      case '25004':
        return 'Ingenieria del Software';
      case '25005':
        return 'Sistema de Base de Datos II';
      case '25006':
        return 'Sistemas Operativos';
      case '25007':
        return 'Interacción Humano Computador';
      case '14001':
        return 'Algoritmos y programación III';
      case '14002':
        return 'Calculo II';
      case '14003':
        return 'Matematicas Discretas';
      case '14004':
        return 'Desarrollo del Software';
      default:
        return 'No existe ese NRC';
    }
  }

  static List<String> getAsignaturas(String semestre) {
    switch (semestre) {
      case '2020-25':
        return <String>['Algoritmos y programación I','Sistema de Base de Datos I','Electiva:Calidad del Software'];
      case '2020-15':
        return <String>['Algoritmos y programación III','Calculo II','Matematicas Discretas', 'Desarrollo del Software'];
      case '2019-25':
        return <String>['Ingenieria del Software','Sistema de Base de Datos II','Sistemas Operativos','Interacción Humano Computador']; 
      default:
        return <String>['No asignaturas'];
    }
  }
}
