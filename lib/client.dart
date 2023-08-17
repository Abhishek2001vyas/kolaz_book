import 'package:flutter/material.dart';

class Cli extends StatelessWidget {
  const Cli({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 20,
        decoration: BoxDecoration(color: Colors.green),
        child: Column(
          children: [
            Row(
              children: [Text("jbbckbsk"), Text("hvsjcbjks"), Text("scbjbj")],
            ),
            Container(
              decoration: BoxDecoration(color: Colors.green),
              child: Row(children: [
                Text("jbbckbsk"),
                Text("hvsjcbjks"),
                Text("scbjbj"),
              ]),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.green),
              child: Row(children: [
                Text("jbbckbsk"),
                Text("hvsjcbjks"),
                Text("scbjbj"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
