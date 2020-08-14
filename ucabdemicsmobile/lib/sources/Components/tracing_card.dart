import 'package:flutter/material.dart';
import '../../Views/Solicitude/solicitude_page.dart';
import '../Constants/constats.dart';
import '../../Views/class_plan/class_plan.dart';
import '../../Views/MainMenu/main_menu_page.dart';
import '../../Views/Settings/setting_page.dart';

class TracingCard extends StatelessWidget{
  String nrc;
  TracingCard({this.nrc}) : assert(nrc != null);

  @override
  Widget build(BuildContext context) {

    return Container(

      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Adobe XD layer: 'TracingCard' (group)
            Stack(
              children: <Widget>[
                  // Adobe XD layer: 'Card' (shape)
                  Container(
                  width: 371.0,
                  height: 172.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffe1e1e1),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
                // Adobe XD layer: 'OptionsButton' (group)
                Stack(
                  children: <Widget>[
                    /*Transform.translate(
                      offset: Offset(347.0, 42.0),
                      child:
                      // Adobe XD layer: 'OptionsIcon' (shape)
                      *//*SvgPicture.string(
                        '<svg viewBox="347.0 42.0 4.0 16.0" ><path transform="translate(337.0, 38.0)" d="M 12 16 C 13.10000038146973 16 14 16.89999961853027 14 18 C 14 19.10000038146973 13.10000038146973 20 12 20 C 10.89999961853027 20 10 19.10000038146973 10 18 C 10 16.89999961853027 10.89999961853027 16 12 16 Z M 12 14 C 10.89999961853027 14 10 13.10000038146973 10 12 C 10 10.89999961853027 10.89999961853027 10 12 10 C 13.10000038146973 10 14 10.89999961853027 14 12 C 14 13.10000038146973 13.10000038146973 14 12 14 Z M 12 8 C 10.89999961853027 8 10 7.100000381469727 10 6 C 10 4.899999618530273 10.89999961853027 4 12 4 C 13.10000038146973 4 14 4.899999618530273 14 6 C 14 7.100000381469727 13.10000038146973 8 12 8 Z" fill="#828282" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                        allowDrawingOutsideViewBox: true,
                      ),*//*
                    ),*/
                    Transform.translate(
                      offset: Offset(339.0, 40.0),
                      child:
                      // Adobe XD layer: 'OptionsButton' (shape)
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.elliptical(10.0, 10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                // Adobe XD layer: 'CurrentContent' (group)
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(20.0, 106.0),
                      child:
                      // Adobe XD layer: 'CurrentContent' (text)
                      Text(
                        '1.2 Lorem ipsum dolor',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: const Color(0xff828282),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(20.0, 88.0),
                      child:
                      // Adobe XD layer: 'TemaActual' (text)
                      Text(
                        'Tema Actual',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: const Color(0xff40b4e5),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                // Adobe XD layer: 'ProgressBar' (group)
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(20.0, 140.0),
                      child:
                      // Adobe XD layer: 'BarBackground' (shape)
                      Container(
                        width: 295.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: const Color(0xffffedbd),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(325.0, 134.0),
                      child:
                      // Adobe XD layer: 'PercentageProgress' (text)
                      Text(
                        '25%',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: const Color(0xff828282),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(20.0, 140.0),
                      child:
                      // Adobe XD layer: 'BarFillProgress' (shape)
                      Container(
                        width: 74.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: const Color(0xffffc526),
                        ),
                      ),
                    ),
                  ],
                ),
                // Adobe XD layer: 'Subject' (group)
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(20.0, 48.0),
                      child:
                      // Adobe XD layer: 'NRC' (text)
                      Text(
                        '25412',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: const Color(0xff40b4e5),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(20.0, 20.0),
                      child:
                      // Adobe XD layer: 'SubjectName' (text)
                      Text(
                        'Algoritmos y Programación I',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: const Color(0xff047732),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}