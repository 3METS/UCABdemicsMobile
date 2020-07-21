import 'package:flutter/material.dart';
import 'package:flutter/src/material/date_picker.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class SecondStep extends StatefulWidget {
  SecondStep({Key key}) : super(key: key);

  @override
  _SecondStepState createState() => _SecondStepState();
}

class _SecondStepState extends State<SecondStep> {

  List<String> _lItems = [];
  final TextEditingController _eCtrl = new TextEditingController();

  DateTime _dateTime;
  String _dateaux = "";

  void removelItems(int index){
    setState(() {
      _lItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Fechas de Evaluación", style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0,),
          ListTile(
            leading: Icon(Icons.add, color: myBlue[3]),
            title: FlatButton(
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Agregar Fecha',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300),
                ),
              ),
              onPressed: (){
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2001),
                  lastDate: DateTime(2030)
                ).then((date){
                  setState(() {
                    _dateTime = date;
                    _dateaux = _dateTime.day.toString()+" de "+months[_dateTime.month]+" de "+_dateTime.year.toString();
                    _lItems.add(_dateaux);
                  });
                });
              },
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _lItems.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return new ListTile(
                title: Container(alignment: Alignment.centerRight, child:Text(_lItems[index],style: TextStyle(fontWeight: FontWeight.w300),)) ,
                trailing: Container(width: 50.0,padding: EdgeInsets.all(0.0), child: FlatButton(onPressed:(){removelItems(index);}, child: Icon(Icons.remove_circle,)),) ,
              );
            }
          ),
        ],
      ),
    );
  }
}