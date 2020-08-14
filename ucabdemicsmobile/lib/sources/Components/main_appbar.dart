import 'package:flutter/material.dart';


// ignore: must_be_immutable
class MainAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double _preferredHeight =120.0;

  String title;
  Color titleColor, backgroundColor;

  MainAppBar({this.title,this.titleColor,this.backgroundColor}):
    assert(title != null),
    assert(titleColor != null),
    assert(backgroundColor != null);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: _preferredHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top:40.0),
      color:backgroundColor,
      child: 
        Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: 35.0,
            fontWeight: FontWeight.w900
          ),
        ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}