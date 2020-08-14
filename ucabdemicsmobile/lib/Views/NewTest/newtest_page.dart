import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/NewTest/FirstStep.dart';
import 'package:ucabdemicsmobile/Views/NewTest/secondstep.dart';
import 'package:ucabdemicsmobile/Views/NewTest/thirdstep.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class NewTestPage extends StatefulWidget {
  NewTestPage({Key key}) : super(key: key);

  @override
  _NewTestPageState createState() => _NewTestPageState();
}

class _NewTestPageState extends State<NewTestPage> {

  double _progress = 0.0;
  String _nextText = "Siguiente  >";
  String _backText = "<  Anterior";
  String _finish = "   Finalizar   ";

  Widget _selectCenterBody(){

    switch(_progress.toString()) {
      case "0.0": {
        return FirstStep();
      }
      break;
      case "0.5": {
        return SecondStep();
      }
      break;
      case "1.0": {
        return ThirdStep();
      }
      break;
    }
  }

  String _selectRightButton(){
    if(_progress<1.0){
      return _nextText;
    }else{
      return _finish;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Nueva Evaluación", style: TextStyle(fontWeight: FontWeight.bold),),
          leading: IconButton(
            icon: Icon(Icons.clear,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          backgroundColor: myBlue[4],
        ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          SizedBox(height: 20,),
          LinearProgressIndicator(
            value: _progress,backgroundColor:
            Colors.blueGrey[100],
            valueColor: AlwaysStoppedAnimation<Color>(myYellow[3]),
          ),
          SizedBox(height: 40,),
          _selectCenterBody(),
          SizedBox(height: 40,),
          Row(
            children: <Widget>[
              OutlineButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                textColor: Colors.grey,
                padding: EdgeInsets.all(15),
                onPressed: () {
                  setState(() {
                    if(_progress > 0.0)
                      _progress -= 0.5;
                  });
                },
                child: Text(
                  _backText,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.54,),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: myGreen[4],
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: () {
                  if(_progress < 1.0)
                    setState(() {
                      _progress += 0.5;
                    });
                  else Navigator.of(context).pop();
                },
                child: Text(
                  _selectRightButton(),
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}