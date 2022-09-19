import 'package:flutter/material.dart';
import 'package:lab10_01/pages/home.dart';
import 'package:lab10_01/pages/loading.dart';
import 'package:lab10_01/pages/choose_location.dart';


void main() => runApp(MaterialApp(
// home: Home(),
// instead of making home: property to make any page to initialize atbeginning...
// we can use following code ....
// initialRoute: '/home',
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));
