import 'package:flutter/material.dart';
import 'package:third_app/menu.dart';
import 'package:third_app/welcome.dart';
import 'explore.dart';
import 'join.dart';

void main() {
 runApp(
  MaterialApp(
  initialRoute: "/menu",
  routes: {
    '/': (context) => const WelcomeScreen(),
    '/join': (context) => JoinScreen(),
    '/menu': (context) => const Menu(),
  },
  title: 'nnn',
  debugShowCheckedModeBanner: false,
  ));
}

