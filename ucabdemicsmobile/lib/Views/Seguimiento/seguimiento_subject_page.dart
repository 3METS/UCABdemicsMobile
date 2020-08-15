import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

class SeguimientoSubjectPage extends StatefulWidget {
  final String subjectName;
  final double subjectPercentaje;

  SeguimientoSubjectPage({Key key, @required this.subjectName, @required this.subjectPercentaje}) : super(key: key);

  @override
  _SeguimientoSubjectPageState createState() => _SeguimientoSubjectPageState();
}

class _SeguimientoSubjectPageState extends State<SeguimientoSubjectPage> {

  double _progressbarvalue;

  Widget percentajeProgress(){
    setState(() {
      _progressbarvalue = widget.subjectPercentaje*100;
    });

    return Text('$_progressbarvalue%', style: TextStyle(color: myBlue, fontWeight: FontWeight.bold), textScaleFactor: MediaQuery.of(context).size.width*0.003,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlue[4],
        title: Text(widget.subjectName),
        bottomOpacity: 0.0,
        elevation: 0.0,
        bottom: PreferredSize(
          child: Container(
            color: Colors.orange,
            height: 4.0,
          ),
          preferredSize: Size.fromHeight(4.0)
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                // horizontal: MediaQuery.of(context).size.height*0.17,
                // vertical: MediaQuery.of(context).size.height*0.042,
              ),
              height: MediaQuery.of(context).size.height*0.35,
              decoration: BoxDecoration(
                color: myBlue[4],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40.0,),
                  Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.3,
                    child: CircularProgressIndicator(
                      value: widget.subjectPercentaje,
                      backgroundColor: Colors.white,
                      valueColor: new AlwaysStoppedAnimation<Color>(myBlue),
                      strokeWidth: 20.0,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  percentajeProgress(),
                  SizedBox(height: 10,),
                  Text('Progreso', style: TextStyle(color: myBlue, fontWeight: FontWeight.bold),textScaleFactor: MediaQuery.of(context).size.width*0.003),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Tema 1'),
                    trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.25,
                            backgroundColor: myYellow[1],
                            valueColor: AlwaysStoppedAnimation<Color>(myYellow[3]),
                          ),
                        ),
                        SizedBox(width: 40,),
                        Text('25%'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  ListTile(
                    title: Text('Tema 2'),
                    trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: myYellow[1],
                            valueColor: AlwaysStoppedAnimation<Color>(myYellow[3]),
                          ),
                        ),
                        SizedBox(width: 40,),
                        Text('50%'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  ListTile(
                    title: Text('Tema 3'),
                    trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null),
                    subtitle: Row(
                      children: <Widget>[
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: myYellow[1],
                            valueColor: AlwaysStoppedAnimation<Color>(myYellow[3]),
                          ),
                        ),
                        Text('75%'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}