import 'package:flutter/material.dart';

const String mainFont = 'Poppins';

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

Widget logosmall01(){
  return Image(
      image: AssetImage('assets/images/logo/logo_small_0.1.png'),
      alignment: Alignment.centerLeft,
      );
}