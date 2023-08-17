import 'package:flutter/material.dart';
import 'package:scrren/contact.dart';

class Newadd extends StatelessWidget {
  const Newadd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 270),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              color: Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 10, left: 10),
                    child: Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Photographer",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                   Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10, right: 10)),
                      SizedBox(
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, right: 10, left: 0),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color(0xff6D6A6A),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Enter First Name',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Your Enter First Name',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, right: 00),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color(0xff6D6A6A),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'last Name',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Your Last Name',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 5),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xff6D6A6A),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Moblie no',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your Moblie no',
                      ),
                    ),
                  ),
                  // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 5),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xff6D6A6A),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'City',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your city',
                      ),
                    ),
                  ),
                  // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 5),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xff6D6A6A),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Type Of Photographer',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Type Of Photographer',
                      ),
                    ),
                  ),
                  // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 5),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xff6D6A6A),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Company Name (Optional)',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your Company Name (Optional)',
                      ),
                    ),
                  ),
                  // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 5),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xff6D6A6A),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Add Per Day Charges',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Add Per Day Charges',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.only(
                              left: 100,
                              right: 100,
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cont()),
                          );
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
