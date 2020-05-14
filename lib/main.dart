/*
*  main.dart
*  Quiz5
*
*  Created by BB Caspian.
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quiz3/page3_widget/page3_widget.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page3Widget(),
    );
  }
}