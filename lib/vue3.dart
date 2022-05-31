import 'package:flutter/material.dart';

class Vue3 extends StatefulWidget {

  Vue3({Key? key}) : super(key: key);

  @override
  State<Vue3> createState() => _Vue3State();
}

class _Vue3State extends State<Vue3> {
  var textToPredict = "";
  var prediction = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(Icons.favorite),
      Text("La prédiction est $prediction !"),
      TextField(onChanged: (value) => textToPredict = value),
        IconButton(onPressed: () => () {
          print("dfkjsdf");
          getPrediction(textToPredict).then((value) {
            print("test1");
            setState(() {
              prediction = value;
            });
          });
        }, icon: const Icon(Icons.check))

    ],);
  }

  Future<String> getPrediction(String text) {
    return Future.delayed(Duration(seconds:3), () {
      print("test prediction finie");
      return "Ma prédiction";
    });
  }
}