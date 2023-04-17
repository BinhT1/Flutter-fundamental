import 'package:flutter/material.dart';
import 'package:flutter_fundamental/pages/choose_location.dart';
import 'package:flutter_fundamental/pages/home.dart';
import 'package:flutter_fundamental/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) {
          return ChooseLocation();
        }
      },
    ));
