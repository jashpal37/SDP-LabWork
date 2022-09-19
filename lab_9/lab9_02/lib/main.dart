import 'package:flutter/material.dart';
import 'package:lab9_02/pages/choose_location.dart';
import 'package:lab9_02/pages/home.dart';
import 'package:lab9_02/pages/loading.dart';

void main() => runApp(MaterialApp(
  //home: Home(),
/*  instead of making home: property to make any page to initialize at
    beginning...
    we can use following code ....*/
  initialRoute: '/home',

  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },

  debugShowCheckedModeBanner: false,
  debugShowMaterialGrid: false,
));

