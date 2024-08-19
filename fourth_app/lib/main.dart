import 'package:flutter/material.dart';
import 'package:fourth_app/screens/AddStudent.dart';
import 'package:fourth_app/screens/listStudentsScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute:'/' ,
    routes: {
      '/': (context) => const Liststudentsscreen(),
      '/add': (context) =>const Addstudent(),
    },
    
    debugShowCheckedModeBanner: false

  )
  
  );
}

