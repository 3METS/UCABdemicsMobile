class Atributo{
  String numero;
  String contenido;
  bool logrado;

  Atributo(this.numero,this.contenido,this.logrado);
}

class Unidad{
  String numero;
  String contenido;
  List<Atributo> atributos;

  Unidad(this.numero,this.contenido,this.atributos);

}

class Competencia{
  String numero;
  String contenido;
  List<Unidad> unidades;

  Competencia(this.numero, this.contenido,this.unidades);

  static List<Competencia> getCompetencias(String nrc) {
    switch (nrc) {
      default:
        return <Competencia>[
          Competencia('Competencia 1','Contenido del Tema 1',<Unidad>[
            Unidad('Unidad 1','Contenido de la unidad 1',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',true),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',true),
            ]),
            Unidad('Unidad 2','Contenido de la unidad 2',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',false),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',false),
            ]),
            Unidad('Unidad 3','Contenido de la unidad 3',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',false),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',true),
            ]),
            ],
          ),
          Competencia('Competencia 2','Contenido del Tema 2',<Unidad>[
            Unidad('Unidad 1','Contenido de la unidad 1',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',true),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',true),
            ]),
            Unidad('Unidad 2','Contenido de la unidad 2',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',false),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',false),
            ]),
            Unidad('Unidad 3','Contenido de la unidad 3',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',false),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',true),
            ]),
            ],
          ),
          Competencia('Competencia 3','Contenido del Tema 3',<Unidad>[
            Unidad('Unidad 1','Contenido de la unidad 1',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',true),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',true),
            ]),
            Unidad('Unidad 2','Contenido de la unidad 2',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',false),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',false),
            ]),
            Unidad('Unidad 3','Contenido de la unidad 3',<Atributo>[
              Atributo('Atributo 1','contenido del atributo 1',false),
              Atributo('Atributo 2','contenido del atributo 2',true),
              Atributo('Atributo 3','contenido del atributo 3',true),
            ]),
            ],
          ),
        ]; 
    }
  }
}