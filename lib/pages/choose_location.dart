import 'package:flutter/material.dart';
import 'package:apiworldtimeapp/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(endpoint: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(endpoint: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(endpoint: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(endpoint: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(endpoint: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(endpoint: 'Asia/India', location: 'New York', flag: 'india.png'),
    WorldTime(endpoint: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(endpoint: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];
  @override
  Widget build(BuildContext context) {
    print('Build fucntion ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
