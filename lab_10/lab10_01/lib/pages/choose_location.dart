import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
int counter = 0;  // code test 1:- Test for initState() and build()

// void getData() async {  // code test 2:- Async in flutter
//   // below code is similar like to
//   // simulate network request for a username
//   // its just learning how flutter/dart response to Async
//   String username = await Future.delayed(Duration(seconds: 4), () {
//    return 'UNIVERSITY NAME : DDU';
//   });
//
//   String bio = await Future.delayed(Duration(seconds: 2), () {
//     return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTERENGINEERING STUDY';
//     });
//   print('$username -> $bio');
// }
//
// @override
//   void initState(){
//     super.initState();
//     print('init function run choose location...');
//     print('before getData call');
//     getData();
//     print('after getData call');
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION..'),
        centerTitle: true,
        elevation: 0,
      ),
/*
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('COUNTER IS : $counter'),
      ),*/
    );
  }
}
