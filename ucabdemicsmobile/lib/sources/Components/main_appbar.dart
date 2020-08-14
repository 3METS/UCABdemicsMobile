import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainAppBar extends StatelessWidget implements PreferredSizeWidget {

  double _preferredHeight = 100.0;
  String title;
  Color titleColor, backgroundColor;
  double height;

  MainAppBar({this.title, this.titleColor, this.backgroundColor})
      : assert(title != null),
        assert(titleColor != null),
        assert(backgroundColor != null);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
      height: _preferredHeight,
      alignment: Alignment.center,
      color: backgroundColor,
      child: 
          Text(
            title,
            style: TextStyle(
              color: titleColor, fontSize: 35.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,     
          ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}
