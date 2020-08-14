class Evaluacion{
  String nombre;
  String fecha;
  String porcentaje;

  Evaluacion(this.nombre,this.porcentaje,this.fecha);

  static List<Evaluacion> getEvaluaciones(String nrc) {
    switch (nrc) {
      default:
        return <Evaluacion>[
          Evaluacion('Parcial 1','25%','14-04-2020'),
          Evaluacion('Proyecto 1ra Entrega','15%','01-05-2020'),
          Evaluacion('Parcial 2','25%','27-05-2020'),
          Evaluacion('Proyecto Entrega Final','25%','03-06-2020'),
          Evaluacion('Portafolio','10%','20-05-2020'),
        ]; 
    }
  }
}

