class Semestre {
  String value;

  Semestre(this.value);
  
  static List<Semestre> getSemestres(){
    return <Semestre>[
      Semestre('2020-25'),
      Semestre('2020-15'),
      Semestre('2019-25'),
      Semestre('2019-15'),
      Semestre('2018-25'),
      Semestre('2018-15'),
    ];
  }

}