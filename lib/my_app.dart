import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  Widget child;

  MyApp(this.child, {Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = "world";
  var vueToDisplay = "None";
  var isClicked2 = false;
  var isClicked3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [buildButton(), widget.child],
    );
  }

  Widget buildButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
        icon: Text("1"),
        onPressed: () {
          Navigator.pushNamed(context, "/view1");
        },
      ),
      IconButton(
        icon: Text("2"),
        onPressed: () {
          Navigator.pushNamed(context, "/view2");
        },
      ),
      IconButton(
        icon: Text("3"),
        onPressed: () {
          Navigator.pushNamed(context, "/view3");
        },
      ),
    ]);
  }
}
