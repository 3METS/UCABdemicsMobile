import 'package:flutter/material.dart';

const String mainFont = 'Poppins';
const List<String> months = ["Enero", "Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];

Widget logosmall01(){
  return Image(
    image: AssetImage('lib/sources/assets/images/logo/logo_small_0.1.png'),
    alignment: Alignment.centerLeft,
  );
}

class Period{
  int half;
  int year;
  Period(this.half, this.year);
  static List<Period> getPeriod(){
    return <Period>[
      Period(15, 2019),
      Period(25, 2019),
      Period(15, 2020),
      Period(25, 2020),
      Period(15, 2021),
      Period(25, 2021),
    ];
  }
}

const MaterialColor myBlue = const MaterialColor (
  0xFF40B4E5,
  const <int, Color>{
    1: const Color(0xFFC5E8F7),
    2: const Color(0xFF9ED9F1),
    3: const Color(0xFF40B4E5),
    4: const Color(0xFF1D5066)
  }
);

const MaterialColor myGreen = const MaterialColor (
  0xFF047732,
  const <int, Color>{
    1: const Color(0xFFB3D6C1),
    2: const Color(0xFF80BA97),
    3: const Color(0xFF06C452),
    4: const Color(0xFF047732)
  }
);

const MaterialColor myYellow = const MaterialColor (
  0xFFFFC526,
  const <int, Color>{
    1: const Color(0xFFFFEDBD),
    2: const Color(0xFFFFE292),
    3: const Color(0xFFFFC526)
  }
);

const MaterialColor myGrey = const MaterialColor (
  0xFFF2F2F2, 
  const <int, Color>{
    1: const Color(0xFFF2F2F2),
    2: const Color(0xFFE0E0E0),
  }
);
