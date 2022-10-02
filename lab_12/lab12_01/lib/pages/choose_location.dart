import 'package:flutter/material.dart';
import 'package:lab12_01/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WordTime> locations = [
    WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata'),
    WordTime(location: 'Manila', flag: 'philippines.png', url: 'Asia/Manila'),
    WordTime(location: 'Singapore', flag: 'singapore.png', url: 'Asia/Singapore'),
    WordTime(location: 'Brisbane', flag: 'australia.png', url: 'Australia/Brisbane'),
    WordTime(location: 'Madrid', flag: 'spain.png', url: 'Europe/Madrid'),
    WordTime(location: 'Maldives',flag: 'maldives.png',url: 'Indian/Maldives'),
    // WordTime(location: 'England', flag: 'england.png', url: 'Europe/England'),
    // WordTime(location: 'Argentina', flag: 'argentina.png', url: 'America/Argentina'),
    // WordTime(location: 'Costa_Rica', flag: 'costa-rica.png', url: 'Asia/Costa_Rica'),
    WordTime(location: 'Vienna', flag: 'austria.png', url: 'Europe/Vienna'),
    WordTime(location: 'Moscow', flag: 'russia.png', url: 'Europe/Moscow'),
    WordTime(location: 'Paris', flag: 'france.png', url: 'Europe/Paris'),
    WordTime(location: 'Jamaica',flag: 'jamaica.png',url: 'America/Jamaica'),
WordTime(location: 'Phoenix',flag: 'usa.png',url: 'America/Phoenix'),
  ];
  void updateTime(index) async {
    WordTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context,{
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
      'isDaytime' : instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 5, 59, 236),
        appBar: AppBar(
        // backgroundColor: Colors.deepPurpleAccent,
        // title: const Text('CHOOSE LOCATION'),
        // centerTitle: true,
        // elevation: 0,
),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                    print(locations[index].location);
                  },
                  title: Text(locations[index].toString()),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/flags/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
