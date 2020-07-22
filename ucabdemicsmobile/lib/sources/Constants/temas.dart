import 'package:flutter/material.dart';

class TemasySubtemasTile extends StatefulWidget {
  final String subtema;
  final String tituloSubtema;

  TemasySubtemasTile({Key key, this.subtema, this.tituloSubtema}) : super(key: key);

  @override
  _TemasySubtemasTileState createState() => _TemasySubtemasTileState();
}

class _TemasySubtemasTileState extends State<TemasySubtemasTile> {

  bool _checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: CheckboxListTile( title: Text(this.widget.subtema), subtitle: Text(this.widget.tituloSubtema),
        value: _checkedValue,
        onChanged: (newValue) {
          setState(() {
            _checkedValue = newValue;
          });
        },
      ),
    );
  }
}