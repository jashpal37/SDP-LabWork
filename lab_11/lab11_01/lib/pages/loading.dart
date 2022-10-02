import 'package:flutter/material.dart';
import 'package:lab11_01/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


//Code Test 1,2
/*class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
 @override
 State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Text('LOADING SCREEN'),
   );
 }
}
*/

//Code Test 3
/*
class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
 @override
 State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
 void getData() async {
// below code is similar like to
// simulate network request for a username
// its just learning how flutter/dart response to Async
   String username = await Future.delayed(Duration(seconds: 4), () {
     return 'UNIVERSITY NAME : DDU';
   });
// print('in getData ...after future call....');
// the following code is depends on 1st one ..but what happened at here?
// suppose it is network simulation request to fetch out the bio-data of..
// user name that is received by 1st request.....
   String bio = await Future.delayed(Duration(seconds: 2), () {
     return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER ENGINEERING STUDY';
   });
   print('$username -> $bio');
 }
 @override
 void initState() {
// TODO: implement initState
   super.initState();
   //print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
   //print('before getData call');
   getData();
   //print('after getData call');
 }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Text('LOADING SCREEN'),
   );
 }
}
*/
//LAB10 TUT 2 CODE TEST1

import 'package:http/http.dart';
import 'dart:convert';
/*
class Loading extends StatefulWidget {
 @override
 State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
 void getTime() async {
// Make Request for time and receive response
   Response response = await get(
       Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
   Map timeData = jsonDecode(response.body);
   print(timeData);
// Get particular property form timeData...
   String dateTime = timeData['datetime'];
   String offset = timeData['utc_offset']; //not dst_offset
   print(dateTime);
   print(offset);
   DateTime currentTime = DateTime.parse(dateTime);
   print(currentTime);
/*
DateTime currentOffset = DateTime.parse(offset);
print(currentOffset);
*/
   String offsetHours = offset.substring(1, 3);
   print(offsetHours);
   String offsetMinutes = offset.substring(4, 6);
   print(offsetMinutes);
   currentTime = currentTime.add(Duration(
       minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
   print(currentTime);
 }
 @override
 void initState() {
   super.initState();
   getTime();
 }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Text('LOADING SCREEN'),
   );
 }
}
*/



//LAB10 TUT2 CODE TEST 2

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {

  void setWorldTime() async {
    WordTime timeinstance = WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata');
    await timeinstance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
     'location' : timeinstance.location,
      'flag' : timeinstance.flag,
      'time' : timeinstance.time,
    });

  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: SpinKitPumpingHeart(
            color: Color.fromARGB(255, 234, 4, 4),
            size: 90.0,
            duration:Duration(minutes: 5000),
          ),
        )
    );
  }
}
