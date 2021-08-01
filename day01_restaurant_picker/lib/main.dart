import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final restaurants = [
    "McDonald\'s",
    "Jollibee",
    "Pizza Hut",
    "KFC",
    "Greenwich"
  ];

  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("What do you want to eat?"),
        Text(
          restaurants[currentIndex],
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        TextButton(onPressed: () {}, child: Text("Pick Restaurant"))
      ],
    ))));
  }
}
