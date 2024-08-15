import 'package:flutter/material.dart';
import 'package:second_app/Models/datatypetask.dart';
class Taskwidget extends StatelessWidget {
Task currenttask;
Taskwidget ({required this.currenttask});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.check_box),
      title: Text(currenttask.text),
      trailing: Icon(Icons.delete),
    );
  }
}