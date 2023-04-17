import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location;
  late String time;
  String flag;
  String url;

  WorldTime({this.location = "", this.flag = "", this.url = ""});

  Future<void> getData() async {
    http.Response response =
        await http.get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    Map data = jsonDecode(response.body);

    String dateTime = data['datetime'];
    String offsetStr = data['utc_offset'];
    String offset = offsetStr.substring(1, 3);

    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}

WorldTime instance =
    WorldTime(location: 'Berlin', flag: 'germany.png', url: "Europe/Berlin");
