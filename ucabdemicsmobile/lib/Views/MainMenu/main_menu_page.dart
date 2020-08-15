import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/subject/subject_page.dart';

import 'package:ucabdemicsmobile/sources/Constants/constants.dart';
import 'package:ucabdemicsmobile/Views/MainMenu/subjectcard.dart';

class Mainmenupage extends StatefulWidget {
  Mainmenupage({Key key}) : super(key: key);

  @override
  _MainmenupageState createState() => _MainmenupageState();
}

class _MainmenupageState extends State<Mainmenupage> {

  List<Period> _periods = Period.getPeriod();
  List<DropdownMenuItem<Period>> _dropdownMenuItems;

  Period _selectedPeriod;

  @override
  void initState() {

    _dropdownMenuItems = buildDropDownMenuItems(_periods);
    _selectedPeriod = _dropdownMenuItems[0].value;
    super.initState();

  }

  List<DropdownMenuItem<Period>> buildDropDownMenuItems(List periods){

    List<DropdownMenuItem<Period>> items = List();
    for(Period period in periods){

      items.add(DropdownMenuItem(
          value: period,
          child: Text(period.year.toString()+period.half.toString()),

        )
      );
    }
    return items;

  }

  onChangeDropDownItem(Period selectedPeriod){
    setState(() {
      _selectedPeriod = selectedPeriod;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
        children: <Widget>[
          ListTile(
            title: Text(
              'Planes de Clase',
              textScaleFactor: MediaQuery.of(context).size.width*0.0055,
              style: TextStyle(
                color: Color(0xFF1D5066),
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height:20.0),
          ListTile(
            leading: OutlineButton(
              child: DropdownButton(
                value: _selectedPeriod,
                items: _dropdownMenuItems,
                onChanged: onChangeDropDownItem,
              ),
              onPressed: () {},
            )
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(width: 20.0,),
                periodsubject(),
                SizedBox(width: 20.0,),
                periodsubject(),
              ]
            )
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
            title: Text('Periodo Actual',style: TextStyle(color:Color(0xFF828282)),),
          ),
          FlatButton(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
              title: Text('Sistema de Base de Datos I'),
              subtitle: Text('6 Evaluaciones'),
              leading: Icon(Icons.insert_drive_file,color: Color(0xFFFFC526),),
            ),
            onPressed: (){
              final route = MaterialPageRoute(
                builder: ( context ) => SubjectPage()
              );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
            title: Text('Sistema de Base de Datos I'),
            subtitle: Text('6 Evaluaciones'),
            leading: Icon(Icons.insert_drive_file,color: Color(0xFFFFC526),),
          ),
          ListTile(),
          ListTile(),
        ],
      ),
    );
  }
}

