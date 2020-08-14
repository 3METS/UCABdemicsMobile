import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

Text selectState(int option){
  if( option == 1)
    return Text('Aprobado', style: TextStyle(color: myGreen),);
  else
    return Text('En Proceso', style: TextStyle(color: myYellow[3]),);
}

Widget solicitude( String solicitudeTitle, String date, int state) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 0.001,
          blurRadius: 7,
          offset: Offset(0, 10), // changes position of shadow
        ),
      ],
    ),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(solicitudeTitle),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(date),
          selectState(state)
        ],
      ),
      isThreeLine: true,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(icon: Icon(Icons.edit), onPressed: (){},),
          IconButton(icon: Icon(Icons.delete), onPressed: (){},),
        ],
      ),
    ),
  );
}