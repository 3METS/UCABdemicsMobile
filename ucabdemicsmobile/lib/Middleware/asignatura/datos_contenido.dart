class SubTema{
  String numero;
  String contenido;
  bool logrado;

  SubTema(this.numero, this.contenido, this.logrado);
}

class Tema{
  String numero;
  String contenido;
  List<SubTema> subtemas;

  Tema(this.numero, this.contenido,this.subtemas);

  static List<Tema> getAsignaturas(String nrc) {
    switch (nrc) {
      default:
        return <Tema>[
          Tema('Tema 1','Contenido del Tema 1',<SubTema>[
            SubTema('Subtema 1.1','Contenido del Subtema 1.1',true),
            SubTema('Subtema 1.2','Contenido del Subtema 1.2',false),
            SubTema('Subtema 1.3','Contenido del Subtema 1.3',true),
            ],
          ),
          Tema('Tema 2','Contenido del Tema 2',<SubTema>[
            SubTema('Subtema 2.1','Contenido del Subtema 2.1',true),
            SubTema('Subtema 2.2','Contenido del Subtema 2.2',true),
            SubTema('Subtema 2.3','Contenido del Subtema 2.3',true),
            ],
          ),
          Tema('Tema 3','Contenido del Tema 3',<SubTema>[
            SubTema('Subtema 3.1','Contenido del Subtema 3.1',false),
            SubTema('Subtema 3.2','Contenido del Subtema 3.2',true),
            SubTema('Subtema 3.3','Contenido del Subtema 3.3',false),
            ],
          ),
        ]; 
    }
  }
}