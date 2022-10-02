import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;
    print(data);

    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
    Color? appbgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[900];

    return Scaffold(
      backgroundColor: appbgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding:const EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () async {
                  dynamic result =
                      await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      'time': result['time'],
                      'location': result['location'],
                      'isDaytime': result['isDaytime'],
                      'flag': result['flag'],
                    };
                  });
                },
                icon: Icon(Icons.edit_location,
                color: Colors.grey[300],),
                label: Text(
                  'EDIT LOCATION',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                ),
              ),
              SizedBox(height: 50.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      color: Colors.orange[600],
                      fontFamily: 'NotoSansMono',
                    ),
                  )
                ],
              ),
              SizedBox(height: 40.0,),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 70.0,
                  fontFamily: 'NotoSansMono',
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
