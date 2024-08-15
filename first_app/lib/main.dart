import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title:'Hassan Nasser' ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('This is a back button')),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.heart_broken),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a more button')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a menu button')),
              );
            },
          ),
          
        ],
        title: Text(widget.title),
      ),
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
     body: Column(
        children: [
         const SizedBox(height: 40),
         const Center(
            child: CircleAvatar( 
           radius: 70,
           backgroundImage: AssetImage('images/user.jpg'),
          ),
         ),
         const SizedBox(height: 20),

         const Center(
            child: Text(
            'Hassan Nasser',
            style: TextStyle(
            color: Colors.white, // Change the color
            fontSize: 24.0,    // Change the font size
  ),
        ),
),
          const Center(
            child: Text('software engineer',
            style: TextStyle(
            color: Color.fromARGB(255, 206, 199, 199), // Change the color
            fontSize: 15.0,    // Change the font size
            ), 
            
            ),
          ),
          const Center(
            child: Text('create project with flutter',
            style: TextStyle(
            color: Color.fromARGB(255, 159, 154, 154), // Change the color
            fontSize: 11.0,    // Change the font size
            ),  
            ),
          ),
          const Center(
            child: Text('@S7S',
            style: TextStyle(
            color: Color.fromARGB(255, 159, 154, 154), // Change the color
            fontSize: 9.0,    // Change the font size
            ),    
            ),
          ),
          const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the children horizontally
            children: [ 
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is an add button')),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.youtube_searched_for_sharp),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a remove button')),
                  );
                },
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the children horizontally
            children: [
               Icon(Icons.face),
               Icon(Icons.keyboard_voice),
            ],
          ),
         

        ],
     ),




    );
  }
}
