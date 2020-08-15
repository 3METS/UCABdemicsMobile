class DatosHorario {
  String nombreAsignatura;
  String dia;
  int horaInicio;
  int numHoras;
  String aula;

  DatosHorario(
      this.nombreAsignatura,this.dia, this.horaInicio, this.numHoras, this.aula);

  static List<String> getHoras() {
    return <String>[
      '','7:00','8:00','9:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00',
      '17:00','18:00','19:00','20:00',
    ];
  }

  static List<String> getDias(){
    return <String>[
      'Lunes','Martes','Miércoles','Jueves','Viernes','Sábado'
    ];
  }

  static List<DatosHorario> getDatosHorario(String semestre){
    switch(semestre){
      case '2020-25':
        return <DatosHorario>[
          DatosHorario(
              'Algoritmos y programación I', 'Lunes',7, 2, 'A2-14'),
          DatosHorario(
              'Sistema de Base de Datos I', 'Miércoles',10, 2, 'A4-14'),
          DatosHorario(
              'Electiva:Calidad del Software', 'Lunes', 16,2,'AR-12'),
          DatosHorario(
              'Sistema de Base de Datos I', 'Jueves',19, 2, 'A2-12'),
        ];
      case '2020-15':
        return <DatosHorario>[
          DatosHorario(
              'Algoritmos y programación III','Lunes', 13, 2, 'A2-14'),
          DatosHorario(
              'Calculo II','Martes', 7, 3, 'A2-12'),
          DatosHorario(
              'Matematicas Discretas','Jueves',10, 2, 'AR-23'),
          DatosHorario(
              'Desarrollo del Software','Sábado', 13, 3, 'A4-13'),
        ];
      case '2019-25': 
        return <DatosHorario>[
          DatosHorario(
              'Ingenieria del Software','Lunes',17, 2, 'AR-24'),
          DatosHorario(
              'Sistema de Base de Datos II','Martes', 10, 2, 'LAB-BD'),
          DatosHorario(
              'Sistemas Operativos','Martes',15,2, 'A4-17'),
          DatosHorario(
              'Interacción Humano Computador','Jueves', 11, 3, 'A4-14'),
        ];
      default:
        return <DatosHorario>[
          DatosHorario(
              'Ingenieria del Software','Lunes',17, 2, 'AR-24'),
          DatosHorario(
              'Sistema de Base de Datos II','Martes', 10, 2, 'LAB-BD'),
          DatosHorario(
              'Sistemas Operativos','Martes',15,2, 'A4-17'),
          DatosHorario(
              'Interacción Humano Computador','Jueves', 11, 3, 'A4-14'),
        ];
    }
  }
}
