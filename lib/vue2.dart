import 'package:flutter/material.dart';

class Vue2 extends StatelessWidget {
  const Vue2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: traitementLong(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasError) {
          return Text("Erreur dans le traitement");
        } else if (snapshot.hasData) {
          return Text("Traitement est fini est le code retour est ${snapshot.data}");
        } else {
          return CircularProgressIndicator();
        }
      }
    );
  }

  Future<String> traitementLong() {
    return Future.delayed(Duration(seconds: 3), () => "{\"status\": \"ok\"}",);
  }
}