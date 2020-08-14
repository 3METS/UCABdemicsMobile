class DatosAsignatura {
  String nrc;
  String nombre;
  int semestre;
  int nroEvaluaciones;
  String delegado;

  DatosAsignatura(this.nrc, this.nombre, this.semestre, this.nroEvaluaciones,
      this.delegado);

  static List<DatosAsignatura> getAsignaturas(String semestre) {
    switch (semestre) {
      case '2020-25':
        return <DatosAsignatura>[
          DatosAsignatura(
              '25001', 'Algoritmos y programación I', 2, 6, 'Ricardo Castellanos'),
          DatosAsignatura(
              '25002', 'Sistema de Base de Datos I', 6, 4, 'Mauricio Morales'),
          DatosAsignatura(
              '25003', 'Electiva:Calidad del Software', 8, 6, 'Miguel Zamora'),
        ];
      case '2020-15':
        return <DatosAsignatura>[
          DatosAsignatura(
              '14001', 'Algoritmos y programación III', 2, 7, 'Maria Ordaz'),
          DatosAsignatura(
              '14002', 'Calculo II', 3, 5, 'Javier Hernandez'),
          DatosAsignatura(
              '14003', 'Matematicas Discretas', 6, 5, 'Tania Gutierrez'),
          DatosAsignatura(
              '14004', 'Desarrollo del Software', 8, 4, 'Luis Saavedra'),
        ];
      case '2019-25': 
        return <DatosAsignatura>[
          DatosAsignatura(
              '25004', 'Ingenieria del Software', 2, 6, 'Adrian Luces'),
          DatosAsignatura(
              '25005', 'Sistema de Base de Datos II', 6, 3, 'Juan Fonseca'),
          DatosAsignatura(
              '25006', 'Sistemas Operativos', 6, 5, 'Tania Gutierrez'),
          DatosAsignatura(
              '25007', 'Interacción Humano Computador', 8, 4, 'Luis Saavedra'),
        ];
      default: 
        return <DatosAsignatura>[];
    }
  }

  static int getCantidadAsignaturas(String semestre){
    switch(semestre){
      case '2020-25':
        return 3;
      case '2020-15':
        return 4;
      case '2019-25':
        return 4;
      default:
        return 0;
    }
  }

  static String getSemestreEnLetra(int semestre){
    switch(semestre){
      case 1: return '1er Semestre';
      case 2: return '2do Semestre';
      case 3: return '3er Semestre';
      case 4: return '4to Semestre';
      case 5: return '5to Semestre';
      case 6: return '6to Semestre';
      case 7: return '7mo Semestre';
      case 8: return '8vo Semestre';
      case 9: return '9no Semestre';
      case 10: return '10mo Semestre';
      default: return 'Semestre';
    }
  }

  static String getEvaluacionesEnLetra(int nroEvaluaciones){
    switch(nroEvaluaciones){
      case 1: return '1 Evaluación';
      case 2: return '2 Evaluaciones';
      case 3: return '3 Evaluaciones';
      case 4: return '4 Evaluaciones';
      case 5: return '5 Evaluaciones';
      case 6: return '6 Evaluaciones';
      case 7: return '7 Evaluaciones';
      case 8: return '8 Evaluaciones';
      case 9: return '9 Evaluaciones';
      case 10: return '10 Evaluaciones';
      default: return 'Evaluaciones';
    }
  }


}
