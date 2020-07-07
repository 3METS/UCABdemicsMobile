import 'package:flutter/material.dart';

class ClassPlan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClassPlanState();
  }
}

class _ClassPlanState extends State<ClassPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planes de Clase'),
        centerTitle: true,
      ),
    );
  }
}
