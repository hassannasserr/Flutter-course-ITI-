import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget {
  List<String> quotes = [
    'The greatest glory in living lies not in never falling, but in rising every time we fall. - ',
    'The way to get started is to quit talking and begin doing. - ',
    'Your time is limited, so don\'t waste it living someone else\'s life. ',
    'If life were predictable it would cease to be life, and be without flavor. - ',
    'If you look at what you have in life, you\'ll always have more. - ',
    'If you set your goals ridiculously high and it\'s a failure, you will fail above everyone else\'s success.',
    'Life is what happens when you\'re busy making other plans. - ',
    'Spread love everywhere you go. Let no one ever come to you without leaving happier. - ',
    'When you reach the end of your rope, tie a knot in it and hang on. -',
  ];
  int index = 0;
@override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Play game'),
    ),
    body: Column(
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        const SizedBox(height: 250), // Add an empty SizedBox to maintain the layout
        Text(quotes[index],textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Colors.purple)),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: () {
              index = (index + 1) % quotes.length;
          },
          icon: const Icon(Icons.play_arrow),
          label: const Text('Get new Quote'),
        ),
      ],
    ),
  );
  
  }

}