import 'package:flutter/material.dart';
import 'package:worldtimer/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'London', flag: 'germany.png', url: 'Europe/London');
    await instance.getTime();
    
    Navigator.pushNamed(context, '/home', arguments: {
      'location': instance.location, 
      'flag': instance.flag,
      'time', instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('Loading'),
      ),
    );
  }
}
