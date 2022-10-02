//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lab12_01/pages/choose_location.dart';
import 'package:lab12_01/pages/home.dart';
import 'package:lab12_01/pages/loading.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
  '/': (context) => const Loading(),
  '/home': (context) => const Home(),
  '/location': (context) => const ChooseLocation(),
  },
  debugShowCheckedModeBanner: false,
));