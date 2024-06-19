import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Header
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                // To add fuction
              },
              child: Icon(Icons.menu),
              style: ElevatedButton.styleFrom(shape: CircleBorder()),
            ),
            SizedBox(
              width: 55,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  color: Colors.blueGrey,
                  margin: EdgeInsets.all(5),
                  child: Text(
                    "container1",
                  ) // Container1,
                  ),
            ),
          ],
        ),
        // Search bar
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(child: Text("container2")),
            )
          ],
        ),
        // Detail
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(child: Text("container3")),
            )
          ],
        ),
        // Button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(child: Text("container4")),
            )
          ],
        ),
      ],
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
