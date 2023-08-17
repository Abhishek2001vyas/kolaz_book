import 'package:flutter/material.dart';

import 'cli2.dart';

class Cliadd extends StatelessWidget {
  const Cliadd({super.key});

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
      body: Container(
        height: 1000,
        width: 600,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: 10, right: 140, left: 150, top: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    )),
                onPressed: () {},
                child: const Text(
                  "All",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff3B3B3B),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              height: 80,
              width: 550,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Date", style: TextStyle(color: Colors.white)),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color(0xff8B8B8B),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                    child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Start Date',
                            labelStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(Icons.calendar_month))),
                  ),
                  Text("To", style: TextStyle(color: Colors.white)),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color(0xff8B8B8B),
                        border: Border.all(width: 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                        decoration: InputDecoration(
                            labelText: 'End Date',
                            labelStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(Icons.calendar_month))),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff8B8B8B),
                  border: Border.all(color: Color(0xff686767)),
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Date",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  Text("Discripation",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  Text("Credit",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  Text("Debit",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff8B8B8B),
                  border: Border.all(color: Color(0xff686767)),
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 10),
                  Text("22-02-2023",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  SizedBox(
                    width: 30,
                  ),
                  Text("28-02-2023, Wedding",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  SizedBox(
                    width: 50,
                  ),
                  Text(" ",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  Text("25000",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff8B8B8B),
                  border: Border.all(color: Color(0xff686767)),
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 10),
                  Text("Total Outstanding Amount",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                  SizedBox(
                    width: 90,
                  ),
                  Text("25000 Rs.",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 00, right: 90, left: 10, top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ADDMONEY(),
                        ),
                      );
                    },
                    child: const Text(
                      "Add Amount",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )),
              ),
              Container(
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: Icon(
                  Icons.picture_as_pdf,
                  size: 45,
                ),
              )
            ],
          )
        ]),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // floatingActionButton: FloatingActionButton(heroTag: 'Clipdf',
      //     child: Icon(Icons.picture_as_pdf, size: 30),
      //     backgroundColor: Colors.blue,
      //     onPressed: () {
      //
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => Cliadd(),
      //         ),
      //       );
      //
      //
      //     }
      //
      // )
    );
  }
}
