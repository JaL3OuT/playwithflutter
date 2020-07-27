import 'package:flutter/material.dart';
import 'package:playwithflutter/dice_page.dart';

import 'home_screen.dart';

void main() => runApp(HomePage()) ;

class HomePage extends StatelessWidget {
  const HomePage({Key key }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceScreen(),
    );
  }
}


