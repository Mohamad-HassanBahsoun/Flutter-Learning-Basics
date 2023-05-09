import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({this.location = "Location", this.flag = "Flag", this.url = "Url"});

  Future<void> getTime() async {
    Response response = await get(
        Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url'));

    Map data = jsonDecode(response.body);

    // get properties from the data

    String dateTime = data['dateTime'];

    DateTime now = DateTime.parse(dateTime);

    this.time = now.toString();
  }
}
