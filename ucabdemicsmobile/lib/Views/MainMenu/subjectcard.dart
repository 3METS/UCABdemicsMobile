import 'package:flutter/material.dart';

Widget periodsubject(){
  return Card(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      constraints: BoxConstraints(maxWidth: 170.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sistema de Bases de Datos I',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF9ED9F1)
            ),
          ),
          Text(
            '25446',
            style: TextStyle(
              color: Color(0xFFE0E0E0)
            ),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              style: TextStyle(color:Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Semestre',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF047732),
                    fontSize: 14,
                  )
                ),
                TextSpan(
                  text: '\n6to Semestre',
                  style: TextStyle(
                    color: Color(0xFFE0E0E0),
                    fontSize: 12,
                  ),
                ),
              ]
            )
          ),
          SizedBox(height: 8.0,),
          RichText(
            text: TextSpan(
              style: TextStyle(color:Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Evaluaciones\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF047732),
                    fontSize: 14,
                  )
                ),
                TextSpan(
                  text: '4 Evaluaciones',
                  style: TextStyle(
                    color: Color(0xFFE0E0E0),
                    fontSize: 12,
                  ),
                ),
              ]
            )
          ),
          SizedBox(height: 8.0,),
          RichText(
            text: TextSpan(
              style: TextStyle(color:Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Delegado\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF047732),
                    fontSize: 14,
                  )
                ),
                TextSpan(
                  text: 'Mauricio Morales',
                  style: TextStyle(
                    color: Color(0xFFE0E0E0),
                    fontSize: 12,
                  ),
                ),
              ]
            )
          ),

        ],
      ),
    )
  );
}