
import 'package:flutter/material.dart';
import 'package:third_app/explore.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu',style: TextStyle(fontSize: 25,color:Colors.white)),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
        const SizedBox(height: 150), // Add an empty SizedBox to maintain the layout

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ExploreScreen(x: 'pizza cheese',)));
            },
            child: Card(
              color: Colors.red,
              child: Row(
              children: [Container(
                  
                  height: 50,
                  margin: const EdgeInsets.all(20),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('imges/p.png'),
                    radius: 30,
                  ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text('pizza cheese', style: TextStyle(fontSize: 25,color:Colors.white),),
              )],
            ),),
          ),
         GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ExploreScreen(x: 'pizza vegeteables',)));
            },
            child: Card(
              color: Colors.red,
              child: Row(
              children: [Container(
                  
                  height: 50,
                  margin: const EdgeInsets.all(20),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('imges/p.png'),
                    radius: 30,
                  ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text('pizza vegeteables', style: TextStyle(fontSize: 25,color:Colors.white),),
              )],
            ),),
          ),
           GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ExploreScreen(x: 'fries',)));
            },
            child: Card(
              color: Colors.red,
              child: Row(
              children: [Container(
                  
                  height: 50,
                  margin: const EdgeInsets.all(20),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('imges/F.png'),
                    radius: 30,
                  ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text('fries', style: TextStyle(fontSize: 25,color:Colors.white),),
              )],
            ),),
          )
          


        ],
      )


    );
  }
}