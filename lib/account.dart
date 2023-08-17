import 'package:flutter/material.dart';
import 'package:scrren/(Photographers%20Name)%20Account.dart';
import 'package:scrren/client.dart';
import 'package:scrren/contact.dart';
import 'package:scrren/home.dart';
import 'package:scrren/photo.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'calendar.dart';
import 'cliadd.dart';

class Acc extends StatefulWidget {
  const Acc({super.key});

  @override
  State<Acc> createState() => _AccState();
}

class _AccState extends State<Acc> {
  int Curr = 0;
  int Add = 0;
  // List<bool> _Selected = [true, false];
  int _clindex1 = 0;
  // int _cliindex2 = 0;
  int _phindex = 3;
  int _phindex2 = 0;
  int _phindex3 = 0;
  List<bool> _pSelected = [true, false];
  List<bool> _cSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff686767),
        appBar: AppBar(
          backgroundColor: Color(0xff686767),
          title: Curr == 0
              ? Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Text("CLient Account",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Photographers Account",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl),
                ),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 80, right: 80, bottom: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Curr = 0;
                        });
                      },
                      child: SingleChildScrollView(
                        child: Container(
                          width: 120,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              color: Curr == 0 ? Colors.blue : Colors.grey),
                          child: Text(
                            "Clients",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Curr = 1;
                        });
                      },
                      child: Container(
                        width: 130,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            color: Curr == 1 ? Colors.blue : Colors.grey),
                        child: Text(
                          "Photographer",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Curr == 0
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          _clindex1 = 0;
                                        });
                                      },
                                      child: Text("All")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 80.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          _clindex1 = 1;
                                        });
                                      },
                                      child: Text("Outstanding")),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: _clindex1 == 1
                                ? Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff686767)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xff686767),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Photographer",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 014,
                                                  ),
                                                  Text("City",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 14,
                                                  ),
                                                  Text("Remaining",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff68913F),
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Kinjal Patel",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("Mumbai",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("25000",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff68913F),
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Jigar Patel",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff68913F),
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Raju Shriwastav",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff686767)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xff686767),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Photographer",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 014,
                                                  ),
                                                  Text("City",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 14,
                                                  ),
                                                  Text("Remaining",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.red,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Kinjal Patel",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("Mumbai",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("25000",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff68913F),
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Jigar Patel",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff68913F),
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Raju Shriwastav",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          _phindex = 3;
                                          _phindex3 = 0;
                                          _phindex2 = 0;
                                        });
                                      },
                                      child: Text("All")),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          _phindex2 = 4;
                                          _phindex = 0;
                                          _phindex3 = 0;
                                        });
                                      },
                                      child: Text("Payout")),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          _phindex3 = 5;
                                          _phindex2 = 0;
                                          _phindex = 0;
                                        });
                                      },
                                      child: Text("Outstanding")),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: _phindex == 3 && Curr == 1
                                ? Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff686767)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xff686767),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Photographer Name",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  Text("City Name",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  Text("Amount",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.red,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Kinjal Patel",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("Mumbai",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("25000",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.green,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Jigar Patel",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.green,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Raju Shriwastav",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                          Container(
                            child: _phindex2 == 4 && Curr == 1
                                ? Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff686767)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xff686767),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Photographer",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 014,
                                                  ),
                                                  Text("City",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 14,
                                                  ),
                                                  Text("Payout",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.red,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Kinjal Patel",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("Mumbai",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("25000",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.red,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Jigar Patel",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.red,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Raju Shriwast",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    SizedBox(
                                                      width: 0,
                                                    ),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("-25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                          Container(
                            child: _phindex3 == 5 && Curr == 1
                                ? Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff686767)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xff686767),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 20,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Photographer",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 014,
                                                  ),
                                                  Text("City",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white)),
                                                  SizedBox(
                                                    width: 14,
                                                  ),
                                                  Text("Payout",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff68913F),
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text("Kinjal Patel",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("Mumbai",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white)),
                                                  Text("25000",
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.white))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff68913F),
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Jigar Patel",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.green,
                                                      Color(0xff424242),
                                                      // Color(0xff303030),
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.topRight,
                                                    // stops: [0.8, 0.2,0.7],
                                                  ),
                                                  border: Border.all(
                                                      color: Color(0xff686767)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 50,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("Raju Shriwastav",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("Mumbai",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                    Text("25000",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.white)),
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                        ],
                      ),
              ),
            ],
          ),
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            heroTag: 'Clipdf',
            child: Icon(Icons.picture_as_pdf, size: 40),
            backgroundColor: Colors.blue,
            onPressed: () {
              Curr == 0
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cliadd(),
                      ),
                    )
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Phadd(),
                      ),
                    );
            }));
  }
}
