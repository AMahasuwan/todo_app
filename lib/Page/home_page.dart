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
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                // To add function
              },
              icon: Icon(Icons.account_circle_outlined),
              tooltip: "Account",
            )
          ],
          leading: IconButton(
            onPressed: () {
              // To add function
            },
            icon: Icon(Icons.menu),
            tooltip: "Menu",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                        child: Text(
                      "ToDoSmart",
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ) // Container1,
                        ),
                  ),
                ],
              ),
              // Search bar
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                        child: SearchBar(
                      hintText: 'Search',
                      onTap: () {
                        // To add function
                      },
                      onChanged: (_) {
                        // To add function
                      },
                      leading: Icon(Icons.search),
                    )),
                  )
                ],
              ),
              // Detail
              Wrap(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Card(
                        elevation: 5,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Container(
                            child: Center(
                          child: Column(
                            children: [
                              // Header
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "What you want to do",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  )),
                              // Topic
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Topic',
                                      ))),
                              // Detail
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Detail',
                                      ))),
                              // Commitment date
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // to add function
                                    },
                                    child: Text("Select Date"),
                                  ))
                            ],
                          ),
                        )),
                      ),
                    ),
                  )
                ],
              ),
              // Button
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        child: ElevatedButton(
                      onPressed: () {
                        // to add function
                      },
                      child: Text("Add"),
                    )),
                  )
                ],
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
