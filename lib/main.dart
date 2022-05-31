import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp("Mon application ! "));
}

class MyApp extends StatefulWidget {
  final String title;

  const MyApp(this.title, {Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = "world";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Hello $name !"),
              ],
            ),
            TextField(
              onChanged: nomChange,
            )
          ],
        ),
      ),
    );
  }

  void nomChange(String value) {
    setState(() {
      if (value == null || value.isEmpty) {
        name = "world";
      } else {
        name = value;
      }
    });
  }
}
