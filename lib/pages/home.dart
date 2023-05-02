import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map? data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;

    print(data);

    String bgImage = data?['isDaytime'] ? 'img1.jpg' : 'img2.jpg';
    Color bgColor = data?['isDaytime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/$bgImage'))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: const Icon(Icons.edit_location, color: Colors.black),
                    label: const Text(
                      'Edit Location',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data?['location'],
                      style: const TextStyle(
                          fontSize: 28,
                          letterSpacing: 2.0,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  data?['time'],
                  style: TextStyle(fontSize: 66, color: Colors.white),
                )
              ],
            ),
          ),
        )));
  }
}
