import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Job extends StatelessWidget {
  const Job({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff686767),
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text(
              "Freelancing Jobs",
              style: TextStyle(color: Colors.blue),
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 70, left: 70),
                child: ToggleSwitch(
                  labels: ['Client', 'photographer'],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Color(0xff303030),
                  inactiveFgColor: Colors.white,
                  minHeight: 50,
                  minWidth: 130,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 5,
                      right: 10,
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff8B8B8B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {},
                          child: Text("All Jobs")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 5,
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff8B8B8B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {},
                          child: Text("Upcoming Jobs")),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff3B3B3B)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("date"),
                        Container(
                            width: 50,
                            child: Card(
                              color: Colors.red,
                            )),
                        Text("to"),
                        Container(width: 50, child: Card())
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Text("jbj");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
