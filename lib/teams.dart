import 'package:flutter/material.dart';

class Tea extends StatelessWidget {
  const Tea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff686767),
        appBar: AppBar(
          backgroundColor: Color(0xff686767),
          title: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text("Teams ",
                style: TextStyle(color: Colors.blue, fontSize: 18),
                textDirection: TextDirection.rtl),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 200, bottom: 10),
                  child: Text("Upcoming Clients Jobs",
                      style: TextStyle(color: Colors.white),
                      textDirection: TextDirection.ltr),
                ),
                Container(
                  height: 650,
                  width: 400,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            right: 15,
                            left: 15,
                            // top: 10,
                            bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Color(0xff686767),
                        )),
                        child: Column(children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  color: Color(0xff3B3B3B)),
                              height: 50,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("cilent:krishana",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Segoe UI',
                                            fontWeight: FontWeight.bold)),
                                    Text("event:wedding",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Segoe UI',
                                            fontWeight: FontWeight.bold)),
                                    Text("venve:mumbai",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Segoe UI',
                                            fontWeight: FontWeight.bold)),
                                  ])),
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text("Date :",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold)),
                                        Text("19-06-23"),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("photographer Name",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(width: 30),
                                        Text("Type Of Photography",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Krishna Patel",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(width: 85),
                                        Text("Candid Photography",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Ajit Thakkar",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(width: 190),
                                        Text("Drone",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Ramesh Prajapati",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(width: 165),
                                        Text("Led",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Mohit Khan",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                        SizedBox(width: 070),
                                        Text("Candid Cinematography",
                                            style: TextStyle(
                                                color: Color(0xff3B3B3B),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 110,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              color: Color(0xff3B3B3B),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(children: [
                                      Text("Notes",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold)),
                                      Container()
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 1, left: 8),
                                    child: Row(
                                      children: [
                                        Text("Google Map Link",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold)),
                                        Container()
                                        // TextField(decoration: InputDecoration(fillColor: Colors.white,filled: true),)
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          shape: StadiumBorder(),
                                          padding: EdgeInsets.only(
                                            left: 100,
                                            right: 100,
                                          )),
                                      onPressed: () {},
                                      child: Text(
                                        "PDF",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
