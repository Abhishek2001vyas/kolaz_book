import 'package:flutter/material.dart';
import 'package:scrren/login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff707070),
        Color(0xff686767),
        Color(0xff303030)
      ],begin: Alignment.topCenter,end: Alignment.bottomCenter,stops: [0.2,0.5,0.8]
      )),
        child: Center(
          child: (Image.asset('assets/image/Group 72644.png',
              scale: 7, height: 50, width: 50, fit: BoxFit.fitHeight)),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
