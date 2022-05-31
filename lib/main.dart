import 'package:flutter/material.dart';

void main() {
  runApp(const MainContainer());
}

class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Mon application ! ")), body: MyApp()));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
    switch (vueToDisplay) {
      case "vue1":
        return Column(
          children: [buildButton(), Text("Vue 1")],
        );
      case "vue2":
        return Column(
          children: [buildButton(), Text("Vue 2")],
        );
      case "vue3":
        return Column(
          children: [buildButton(), Text("Vue 3")],
        );
      default:
        return buildButton();
    }
  }

  Widget buildButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
        icon: Text("1"),
        onPressed: () {
          setState(() {
            vueToDisplay = "vue1";
          });
        },
      ),
      IconButton(
        icon: Text("2"),
        onPressed: () {
          setState(() {
            vueToDisplay = "vue2";
          });
        },
      ),
      IconButton(
        icon: Text("3"),
        onPressed: () {
          setState(() {
            vueToDisplay = "vue3";
          });
        },
      ),
    ]);
  }
}


class Vue1 extends StatelessWidget {
  const Vue1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Vue 1");
  }
}
