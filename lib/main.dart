import 'package:flutter/material.dart';
import 'package:untitled/my_app.dart';
import 'package:untitled/vue1.dart';
import 'package:untitled/vue2.dart';
import 'package:untitled/vue3.dart';

void main() {
  runApp(const MainContainer());
}

class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buildInitContainer(child: MyApp(Vue1())),
      routes: {
        "/view1": (context) => buildInitContainer(child: MyApp(Vue1())),
        "/view2": (context) => buildInitContainer(child: MyApp(Vue2())),
        "/view3": (context) => buildInitContainer(child: MyApp(Vue3()))
      },
    );
  }

  Widget buildInitContainer({required Widget child}) {
    return Scaffold(
        appBar: AppBar(title: Text("Mon application ! ")), body: child);
  }
}
