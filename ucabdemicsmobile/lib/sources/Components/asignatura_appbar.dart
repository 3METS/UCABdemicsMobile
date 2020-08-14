import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AsignaturaAppBar extends StatelessWidget implements PreferredSizeWidget {
  double _preferredHeight = 150.0;

  String title;
  Color titleColor, backgroundColor;
  double height;

  AsignaturaAppBar({this.title, this.titleColor, this.backgroundColor})
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: titleColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            PopupMenuButton<Object>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30.0,
              ),
              onSelected: (Object valor) {
                print(valor);
              },
              itemBuilder: (context) {
                var list = List<PopupMenuEntry<Object>>();
                list.add(
                  PopupMenuItem(
                  value: 'Descargar',
                  child: ListTile(
                    leading: Icon(Icons.file_download),
                    title: Text('Descargar'),
                  ),
                ));
                list.add(PopupMenuItem<String>(
                  value: 'Compartir',
                  child: ListTile(
                    leading: Icon(Icons.share),
                    title: Text('Compartir'),
                  ),
                ));
                list.add(PopupMenuDivider(
                  height: 10.0,
                ));
                list.add(PopupMenuItem<String>(
                  value: 'Eliminar',
                  child: ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Eliminar'),
                  ),
                ));
                return list;
              },
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}
