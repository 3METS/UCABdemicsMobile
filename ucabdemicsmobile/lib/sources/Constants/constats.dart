import 'package:flutter/material.dart';

const String mainFont = 'Poppins';

const int color1_blue = 0xFF40B4E5;
const int color2_green = 0xFF06C452;

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