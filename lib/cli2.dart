import 'package:flutter/material.dart';

import 'cliadd.dart';

class ADDMONEY extends StatefulWidget {
  const ADDMONEY({super.key});

  @override
  State<ADDMONEY> createState() => _ADDMONEYState();
}

class _ADDMONEYState extends State<ADDMONEY> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff686767),
      appBar: AppBar(
        backgroundColor: Color(0xff303030),
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text("(Client Name) Account",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Container(
                    width: 170,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        color: currentIndex == 0 ? Colors.green : Colors.grey),
                    child: Text(
                      "Payment Received",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Container(
                    width: 170,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: currentIndex == 1 ? Colors.blue : Colors.grey),
                    child: Text(
                      "Add Extra Charges",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          currentIndex == 0
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220, top: 20),
                      child: Text("Enter Received Amount",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                      child: Container(
                        height: 60,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150, top: 20),
                      child: Text("Enter Short Description (Optional)",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                      child: Container(
                        height: 60,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                shape: StadiumBorder(),
                                padding: EdgeInsets.only(
                                  left: 70,
                                  right: 70,
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cliadd()),
                              );
                            },
                            child: const Text(
                              "Add Payment",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 190, top: 20),
                      child: Text("Enter Extra Charges Amount",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                      child: Container(
                        height: 60,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150, top: 20),
                      child: Text("Enter Short Description (Optional)",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                      child: Container(
                        height: 60,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                shape: StadiumBorder(),
                                padding: EdgeInsets.only(
                                  left: 50,
                                  right: 50,
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cliadd()),
                              );
                            },
                            child: const Text(
                              "Add Extra Charges",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
