import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Store'),
        backgroundColor: const Color.fromARGB(255, 241, 236, 235),
      ),
      body: 
      Container(
        color: const Color.fromARGB(255, 228, 37, 23),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Container(
              margin: const EdgeInsets.all(10.0),
              child:  Image.asset('imges/PI.jpeg'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Explore Our Menu '),
            ),
          ],
        ),
      ),






    );
  }
}