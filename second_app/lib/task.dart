import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Task2> {
  List<String> que = [
    'What is your name?',
    'What is your age?',
    'What is your favorite color?',
    'What is your favorite food?',
    'What is your favorite movie?',
    'What is your favorite song?',
    'What is your favorite book?',
    'What is your favorite sport?',
    'What is your favorite animal?',
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(' Questions', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      centerTitle:true
      ),
      body: 
      Column(
          children: [
            const SizedBox(
          width: double.infinity,
        ),
                const SizedBox(height: 250), // Add an empty SizedBox to maintain the layout

        Text(que[index],textAlign: TextAlign.center, style: const TextStyle(fontSize: 20,color: Colors.purple)),
         const SizedBox(height: 50),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(
                onPressed: () {
                bool isFirst = index == 0;
                if(isFirst){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Start of Questions'),
                        content: const Text('You have reached the start of the questions'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  setState(() {
                    index = (index - 1) % que.length;
                  });
                }
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('Previous Question'),
              ),
              const SizedBox(width: 20),
              OutlinedButton.icon(
                onPressed: () {
                  bool isLast = index == que.length - 1;
                 if(isLast){
                   showDialog(
                     context: context,
                     builder: (context) {
                       return AlertDialog(
                         title: const Text('End of Questions'),
                         content: const Text('You have reached the end of the questions'),
                         actions: [
                           TextButton(
                             onPressed: () {
                               Navigator.of(context).pop();
                             },
                             child: const Text('Close'),
                           ),
                         ],
                       );
                     },
                   );
                } else {
                  setState(() {
                    index = (index + 1) % que.length;
                  });
                }
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('Next Question'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Text('${index + 1} / ${que.length}',textAlign: TextAlign.center, style: const TextStyle(fontSize: 20,color: Colors.black)),
         
         
         
          ],


      ),



    );
  }
}