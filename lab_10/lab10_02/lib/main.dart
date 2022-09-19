import 'package:flutter/material.dart';
import 'package:lab10_02/pages/loading.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Loading(),
    }
));



