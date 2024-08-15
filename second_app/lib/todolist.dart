import 'package:flutter/material.dart';
import 'package:second_app/Models/datatypetask.dart';
import 'Taskwidget.dart';
class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Todolist> {
  List<Task> tasks = [
    Task.add(text: 'Study for exam'),
    Task.add(text: 'Go to the gym'),
    Task.add(text: 'Buy groceries'),
    Task.add(text: 'Play games'),
  ];
  void TaskDone(int ID){
      setState(() {
        for(var i=0;i<tasks.length;i++){
          if(tasks[i].id==ID){
            tasks[i].isDone=!tasks[i].isDone;
          }
        }
      });
  }
  
  void DeleteTask(int id){
    setState(() {
      tasks.removeWhere((t)=>t.id==id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' My To do list'),
      ),
      body: ListView(
      children: tasks.map((t) => ListTile(
        leading: IconButton(
          onPressed: () {
            TaskDone(t.id);
          },
          icon: t.isDone ?  Icon(Icons.check) : Icon(Icons.check_box),
        ),
        title: Text(t.text,style:TextStyle(decoration: t.isDone?TextDecoration.lineThrough:TextDecoration.none)),
        trailing: IconButton(onPressed: (){
          DeleteTask(t.id);
        }, icon: Icon(Icons.delete)),
      )).toList(),
      )
    );
  }
}