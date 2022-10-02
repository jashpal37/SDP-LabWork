
import 'package:flutter/material.dart';
import 'package:lab12_01/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

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
      'isDaytime' : timeinstance.isDaytime,
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
        backgroundColor: Color.fromARGB(255, 5, 224, 20),
        body: Center(
          child: SpinKitFadingFour(
            color: Colors.white,
            size: 90.0,
            // duration:Duration(milliseconds:1000),
          ),
        )
    );
  }
}
