//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lab11_01/pages/choose_location.dart';
import 'package:lab11_01/pages/home.dart';
import 'package:lab11_01/pages/loading.dart';

/* // Code Test 1
void main() => runApp(MaterialApp(initialRoute: '/home', routes: {
 '/': (context) => Loading(),
 '/home': (context) => Home(),
 '/location': (context) => ChooseLocation(),
}));
*/



// Code Test 2
void main() => runApp(MaterialApp(initialRoute: '/', routes: {
  '/': (context) => Loading(),
  '/home': (context) => Home(),
  '/location': (context) => ChooseLocation(),
},
debugShowCheckedModeBanner: false,
));