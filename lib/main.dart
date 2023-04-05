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
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.airport_shuttle,
              color: Colors.lightBlue, size: 50.0),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
            onPressed: () {
              print("hahahaha");
            },
            child: const Text('Enabled',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          IconButton(
            iconSize: 50,
            icon: const Icon(Icons.airport_shuttle),
            onPressed: () {},
            tooltip: "click button",
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.download,
                size: 24,
              ),
              label: const Text("download")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Download'),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.download,
                  size: 24.0,
                ),
              ],
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text("click"),
      ),
    );
  }
}
