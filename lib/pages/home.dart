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
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
      child: Column(
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
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            data?['time'],
            style: TextStyle(fontSize: 66),
          )
        ],
      ),
    )));
  }
}
