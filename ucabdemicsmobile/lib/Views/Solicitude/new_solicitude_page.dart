import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/sources/Constants/constants.dart';
import 'package:intl/intl.dart';

class NewSolicitudePage extends StatefulWidget {
  NewSolicitudePage({Key key}) : super(key: key);

  @override
  _NewSolicitudePageState createState() => _NewSolicitudePageState();
}

class _NewSolicitudePageState extends State<NewSolicitudePage> {
  int _value = 1;

  DateTime selectedDate = DateTime.now();

  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;

  bool _checkboxValue = false;

  Future<Null> selectTime(BuildContext context) async{
    picked = await showTimePicker(
      context: context,
      initialTime: _time
    );

    setState(() {
      _time = picked;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget dropmenu(){
    return DropdownButton(
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      underline: Container(),
      value: _value,
      items: [
        DropdownMenuItem(
          child: Text("Video Beam"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("Salón"),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text("Computadora"),
          value: 3
        ),
      ],
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva Solicitud'),
        backgroundColor: myBlue[4],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal:MediaQuery.of(context).size.height*0.06,
          vertical: MediaQuery.of(context).size.height*0.03,
        ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.015),
        child:ListView(
          children: <Widget>[
            ListTile(
              title: Text('Tipo'),
              trailing: dropmenu(),
            ),
            ListTile(
              title: Text('Fecha'),
              trailing: FlatButton(
                onPressed: () => _selectDate(context),
                child: Text(DateFormat('dd/MM/yyyy').format(selectedDate)),
              ),
            ),
            ListTile(
              title: Text('Hora'),
              trailing: FlatButton(
                onPressed: () {selectTime(context);},
                child: Text(_time.format(context)),
              ),
            ),
            CheckboxListTile(
              title: Text('Solicitar Video Beam'),
              value: _checkboxValue,
              onChanged: (bool value){
                setState(() {
                  _checkboxValue = value;
                });
              }
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
        width: MediaQuery.of(context).size.width*0.3,
        height: MediaQuery.of(context).size.height*0.05,
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text('Finalizar',textScaleFactor: MediaQuery.of(context).size.width*0.002, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          color: myGreen,
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
        )
      ),
    );
  }
}