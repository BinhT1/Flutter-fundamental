import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('my first app'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: const Center(
      child: Text("Hello world",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey,
              fontFamily: "IndieFlower")),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.red[600],
      child: const Text("click"),
    ),
  )));
}
