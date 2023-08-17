import 'package:flutter/material.dart';
import 'package:scrren/scrren1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: splash()
    );
  }
}
