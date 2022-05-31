import 'package:flutter/material.dart';

class Vue1 extends StatefulWidget {
  const Vue1({Key? key}) : super(key: key);

  @override
  State<Vue1> createState() => _Vue1State();
}

class _Vue1State extends State<Vue1> {
  var clickCount = 0;
  var isTraitementEnCours = false;

  @override
  Widget build(BuildContext context) {
    if (isTraitementEnCours) {
      return const CircularProgressIndicator();
    } else {
      return IconButton(
        icon: Text(clickCount.toString()),
        onPressed: () {
          traitementLong();
        },
      );
    }
  }

  traitementLong() {
    setState(() {
      isTraitementEnCours = true;
    });
    Future.delayed(
        Duration(seconds: 3),
        () => {
              setState(() {
                clickCount++;
                isTraitementEnCours = false;
              })
            });
  }
}
