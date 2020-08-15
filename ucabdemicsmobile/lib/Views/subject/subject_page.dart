import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/NewTest/newtest_page.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';

class SubjectPage extends StatefulWidget {
  SubjectPage({Key key}) : super(key: key);

  @override
  _SubjectPageState createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {

  static const String download = 'Descargar';
  static const String share = 'Compartir';
  static const String delete = 'Eliminar';

  static const List<String> choices = <String>[
    download,
    share,
    delete
  ];

  void choiceAction(String choice){
    print('Working!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        bottom: PreferredSize(
          child: Container(
            color: Colors.orange,
            height: 4.0,
          ),
          preferredSize: Size.fromHeight(4.0)
        ),
        backgroundColor: myBlue[4],
        actions: <Widget>[
          PopupMenuButton<String>(
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
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Text('Sistemas de Base de Datos I', maxLines: 2,textScaleFactor: MediaQuery.of(context).size.width*0.0055,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            color: myBlue[4],
            alignment: Alignment.centerLeft,
            height: MediaQuery.of(context).size.height * 0.15,
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.15),
          ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('data'))
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final route = MaterialPageRoute(
                builder: ( context ) => NewTestPage()
              );
              Navigator.push(context, route);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}