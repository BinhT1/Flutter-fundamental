import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(child: Image.asset("assets/img1.jpg"))
      // Text("Hello world",
      //     style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         letterSpacing: 2.0,
      //         color: Colors.grey,
      //         fontFamily: "IndieFlower")),
      ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text("click"),
      ),
    );
  }
}
