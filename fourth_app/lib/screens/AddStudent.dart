import 'package:flutter/material.dart';
import 'package:fourth_app/models/StudentClass.dart';
import 'package:fourth_app/style.dart';
import 'package:fourth_app/models/apiHelper.dart';

class Addstudent extends StatefulWidget {
  const Addstudent({super.key});

  @override
  State<Addstudent> createState() => _AddstudentState();
}

class _AddstudentState extends State<Addstudent> {
  var FormKey = GlobalKey<FormState>();
  Studentclass student = Studentclass();
  Apihelper apihelper = Apihelper();
  SaveData(){
   if( FormKey.currentState!.validate()){
      FormKey.currentState!.save();
     apihelper.AddStudent(student);
      //Navigator.pushNamead(context, '/list');
      showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Success"),
        content: Text("The data has been saved successfully."),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
   };

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
      ),
      body: Form(
        key:FormKey ,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: ListView(
              children: [
                TextFormField(
                  onSaved: (value){
                    student.firstname = value!;
                  },
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a valid Name';
                    }
                    else if(value.length < 3){
                      return 'Please enter a valid Name';
                    }
                    else{
                      return null;
                    }
                  },
                 //keyboardType: const TextInputType.numberWithOptions(),
                 // obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: textInputBorder
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                   onSaved: (value){
                    student.lastname = value!;
                  },
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a valid Name';
                    }
                    else if(value.length < 3){
                      return 'Please enter a valid Name';
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: textInputBorder,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onSaved: (newValue) => student.email = newValue!,
                  validator: (value) {
                    var pattern = RegExp(r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$', multiLine: true);
                    if(value == null || value.isEmpty){
                      return 'Please enter a valid Email';
                    }
                    else if(!value.contains('@')){
                      return 'Please enter a valid Email';
                    }
                    else if(!pattern.hasMatch(value)){
                      return 'Please enter a valid Email';
                    }
                    else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: textInputBorder,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onSaved: (newValue) => student.phone = newValue!,
                  validator: (value) {
                    var pattern = RegExp(r'^[0-9]{11}$');

                    if(value == null || value.isEmpty){
                      return 'Please enter a valid Phone Number';
                    }
                    else if(value.length < 10){
                      return 'Please enter a valid Phone Number';
                    }
                    else if(!pattern.hasMatch(value)){
                      return 'Please enter a valid Phone Number';
                    }
                    else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: textInputBorder,
                  ),
                ),
                const SizedBox(height: 20),
                 TextFormField(
                  onSaved: (newValue) => student.nationalID = newValue!,
                  validator: (value) {
                   var pattern = RegExp(r'^[0-9]{16}$');

                    if(value == null || value.isEmpty){
                      return 'Please enter a valid National ID';
                    }
                    else if(value.length < 10){
                      return 'Please enter a valid National ID';
                    }
                    else if(!pattern.hasMatch(value)){
                      return 'Please enter a valid National ID';
                    }
                    else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'National ID',
                    border: textInputBorder,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onSaved: (newValue) => student.age = int.parse(newValue!),
                  validator: (value) {
                    var pattern = RegExp(r'^[0-9]{2}$');
                    if(value == null || value.isEmpty){
                      return 'Please enter a Valid age';
                    }
                    else if(!pattern.hasMatch(value)){
                      return 'Please enter a Valid age';
                    }
                    else if(int.parse(value) < 18){
                      return 'Please enter a Valid age';
                    }
                    else{
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: textInputBorder,
                  ),
                ),
                
                ElevatedButton(onPressed: SaveData, child: const Text('Add Student'))
                //show message if the data is saved


              ],
          ),
        ),
      ),
    );
  }
}