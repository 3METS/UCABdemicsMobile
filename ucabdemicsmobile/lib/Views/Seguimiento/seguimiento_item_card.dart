import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/Seguimiento/seguimiento_provider.dart';
import 'package:ucabdemicsmobile/Views/Seguimiento/seguimiento_subject_page.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';
import 'package:flutter/foundation.dart';

class SeguimientoItemCard extends StatefulWidget {
  final String subjectName;
  final String nrc;
  final String actualTema;
  final double subjectPercentaje;

  SeguimientoItemCard({Key key, @required this.subjectName, @required this.nrc, @required this.actualTema, @required this.subjectPercentaje}) : super(key: key);

  @override
  _SeguimientoItemCardState createState() => _SeguimientoItemCardState();
}

class _SeguimientoItemCardState extends State<SeguimientoItemCard> {

  double _progressbarvalue;

  Widget percentajeProgress(){
    setState(() {
      _progressbarvalue = widget.subjectPercentaje*100;
    });

    return Text('$_progressbarvalue%');
  }

  static const String download = 'Descargar';
  static const String disable = 'Desabilitado';

  static const List<String> choices = <String>[
    download,
    disable,
  ];

  void choiceAction(String choice){
    print('Working!!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.01),
      child: Card(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0,),
              ListTile(
                onTap: (){
                  final route = MaterialPageRoute(
                    builder: ( context ) => SeguimientoSubjectPage(subjectName: widget.subjectName)
                  );
                  Navigator.push(context, route);
                },
                title: Text(
                  widget.subjectName,
                  textScaleFactor: MediaQuery.of(context).size.width*0.003,
                  style: TextStyle(
                    color: myGreen,
                    fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text(
                  widget.nrc,
                  textScaleFactor: MediaQuery.of(context).size.width*0.0022,
                  style: TextStyle(
                    color: myBlue,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: PopupMenuButton<String>(
                  onSelected: choiceAction,
                  itemBuilder: (BuildContext context) {
                    return choices.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Tema Actual',
                  textScaleFactor: MediaQuery.of(context).size.width*0.0025,
                  style: TextStyle(
                    color: myBlue,
                    fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text(widget.actualTema),
              ),
              Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.width*0.02,
                        child: LinearProgressIndicator(
                          value: widget.subjectPercentaje,
                          backgroundColor: myYellow[1],
                          valueColor: AlwaysStoppedAnimation<Color>(myYellow[3]),
                        )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Flexible(flex: 0, child: percentajeProgress()),
                    SizedBox(width: 30,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}