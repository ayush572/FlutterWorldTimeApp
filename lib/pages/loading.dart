import 'package:flutter/material.dart';
import 'package:apiworldtimeapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', endpoint: 'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
    Navigator.pushNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDayTime' : instance.isDayTime
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
   body: Center(
        child: SpinKitPulsingGrid(
          color: Colors.white,
          size: 50.0,
        )
      )
    );
  }
}
