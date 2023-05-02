import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  late String time;
  String flag;
  String url;
  bool? isDaytime;

  WorldTime(
      {this.location = "",
      this.flag = "",
      this.url = "",
      this.isDaytime = false});

  Future<void> getData() async {
    try {
      http.Response response = await http
          .get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      String offsetStr = data['utc_offset'];
      String offset = offsetStr.substring(1, 3);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour > 6 && now.hour < 18 ? true : false;

      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
    }
  }
}

WorldTime instance =
    WorldTime(location: 'Berlin', flag: 'germany.png', url: "Europe/Berlin");
