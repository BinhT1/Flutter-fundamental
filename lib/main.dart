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
      body: Container(
        // can set padding and margin
        color: Colors.grey,
        padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center, // same align-items
          mainAxisAlignment: MainAxisAlignment.start, // same justify-content
          children: <Widget>[
            const Icon(Icons.airport_shuttle,
                color: Colors.lightBlue, size: 50.0),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
                onPressed: () {
                  print("hahahaha");
                },
                child: const Padding(
                  // only paddding, don't have margin
                  padding: EdgeInsets.all(20),
                  child: Text('Enabled',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                )),
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
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset('assets/img1.jpg'),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.cyan,
                    child: const Text("one"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.pinkAccent,
                    child: const Text("two"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.amber,
                  child: const Text("three"),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text("click"),
      ),
    );
  }
}
