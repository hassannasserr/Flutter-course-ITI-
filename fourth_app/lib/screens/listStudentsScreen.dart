import 'package:flutter/material.dart';
import '../models/apiHelper.dart';
class Liststudentsscreen extends StatefulWidget {
  const Liststudentsscreen({super.key});

  @override
  State<Liststudentsscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Liststudentsscreen> {
  List students = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Students'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
          ),
          IconButton(
            onPressed: () async{
              await Apihelper().GetStudents().then((value) {
                setState(() {
                  students = value;
                });
              });
            }
          , icon: const Icon(Icons.refresh)
          )
        ],
      ),
      body: ListView(
        children: students.map((item) => Text(item["Name"])).toList(),
      ),
      
    );
  }
}