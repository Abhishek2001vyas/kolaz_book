import 'package:flutter/material.dart';
import 'package:scrren/calendar.dart';
import 'package:scrren/home.dart';
import 'package:scrren/newphoto.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Cont extends StatefulWidget {
  const Cont({super.key});

  @override
  State<Cont> createState() => _ContState();
}

class _ContState extends State<Cont> {
  // List<bool> tooglebuttom1 = [true, false];
  List<bool> _Selected = [true, false];
  int myindex = 0;
  int currentIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff575656),
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: currentIndex == 1
              ? Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("Photographers Contacts",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.blue)))
              : Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text("Client Contacts",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.blue)),
                )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, right: 70, left: 70),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          color: currentIndex == 0 ? Colors.blue : Colors.grey),
                      child: Text(
                        "Clients",
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
                      width: 130,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          color: currentIndex == 1 ? Colors.blue : Colors.grey),
                      child: Text(
                        "Photographer",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Padding(
            //     padding: EdgeInsets.only(top: 30, right: 70, left: 70),
            //     child: ToggleButtons(
            //       constraints: const BoxConstraints(
            //         minHeight: 60.0,
            //         minWidth: 130.0,
            //       ),
            //       color:Colors.blue,
            //       fillColor: Colors.blue,
            //       focusColor: Colors.blue,
            //       borderWidth: 2,
            //       renderBorder: true,
            //       selectedColor: Colors.blue,
            //       borderRadius: BorderRadius.circular(14.0),
            //       children: [
            //         Text("Client", style: TextStyle(color: Colors.white)),
            //         Text("photographers", style: TextStyle(color: Colors.white))
            //       ],
            //       isSelected: _Selected,
            //       onPressed: (index) {
            //         setState(() {
            //           myindex = index;
            //
            //         });
            //         print("$index");
            //       },
            //     )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff3B3B3B),
                    borderRadius: BorderRadius.circular(18)),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white),

                    // Add a clear button to the search bar

                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),

                    // Add a search icon or button to the search bar

                    prefixIcon: IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            currentIndex == 1
                ? Padding(
                    padding: EdgeInsets.only(
                        left: 10, bottom: 0, top: 10, right: 10),
                    child: ListView.builder(
                      itemCount: 15,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 1, right: 00),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff8B8B8B),
                                borderRadius: BorderRadius.circular(8)),
                            child: ExpansionTile(
                              title: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff8B8B8B),
                                      // border: Border.all(
                                      //
                                      // ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Dhaval Patel",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text("Candid Photographer",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        // Text("Mumbai",
                                        //     style: TextStyle(color: Colors.white)),
                                        // Card(
                                        //     shape: CircleBorder(),
                                        //     color: Color(0xff414141),
                                        //     child: Icon(
                                        //       Icons.call,
                                        //     ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Card(
                                  shape: CircleBorder(),
                                  color: Color(0xff414141),
                                  child: Icon(
                                    Icons.call,
                                  )),
                              childrenPadding: EdgeInsets.all(20),
                              children: [
                                Container(
                                  height: 200,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Color(0xff5D5D5D),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 00.0,
                                            ),
                                            child: Container(
                                              width: 150,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.blue,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          )),
                                                  onPressed: () {
                                                    setState(() {
                                                      // _clindex1 = 0;
                                                    });
                                                  },
                                                  child: Text("Freelencing")),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Container(
                                              width: 150,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary:
                                                              Color(0xff313131),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          )),
                                                  onPressed: () {
                                                    setState(() {
                                                      // _clindex1 = 0;
                                                    });
                                                  },
                                                  child: Text("Allotment")),
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, right: 20, bottom: 10),
                                        child: Container(
                                          width: 400,
                                          height: 50,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  )),
                                              onPressed: () {
                                                setState(() {
                                                  // _clindex1 = 0;
                                                });
                                              },
                                              child: Text("Account")),
                                        ),
                                      ),
                                      Row(children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 50.0,
                                          ),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Color(0xff8B8B8B),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  )),
                                              onPressed: () {
                                                setState(() {
                                                  // _clindex1 = 0;
                                                });
                                              },
                                              child: Text("Edit")),
                                        ),
                                        SizedBox(width: 70),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 50.0,
                                          ),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.red,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  )),
                                              onPressed: () {
                                                setState(() {
                                                  // _clindex1 = 0;
                                                });
                                              },
                                              child: Text("Delete")),
                                        ),
                                      ]),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(
                        left: 10, bottom: 0, top: 10, right: 10),
                    child: ListView.builder(
                      itemCount: 15,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff8B8B8B),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ExpansionTile(
                              title: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff8B8B8B),
                                          border: Border.all(
                                            color: Color(0xff8B8B8B),
                                          )),
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Dhaval Patel",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Text("Mumbai",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          // Card(
                                          //     shape: CircleBorder(),
                                          //     color: Color(0xff414141),
                                          //     child: Icon(
                                          //       Icons.call,
                                          //     ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Card(
                                  shape: CircleBorder(),
                                  color: Color(0xff414141),
                                  child: Icon(
                                    Icons.call,
                                  )),
                              childrenPadding: EdgeInsets.all(20),
                              children: [
                                Container(
                                  height: 200,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Color(0xff5D5D5D),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 00.0,
                                            ),
                                            child: Container(
                                              width: 150,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.blue,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          )),
                                                  onPressed: () {
                                                    setState(() {
                                                      // _clindex1 = 0;
                                                    });
                                                  },
                                                  child: Text("Freelencing")),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20.0,
                                            ),
                                            child: Container(
                                              width: 150,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary:
                                                              Color(0xff313131),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          )),
                                                  onPressed: () {
                                                    setState(() {
                                                      // _clindex1 = 0;
                                                    });
                                                  },
                                                  child: Text("Allotment")),
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, right: 20, bottom: 10),
                                        child: Container(
                                          width: 400,
                                          height: 50,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  )),
                                              onPressed: () {
                                                setState(() {

                                                });
                                              },
                                              child: Text("Account")),
                                        ),
                                      ),
                                      Row(children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 50.0,
                                          ),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Color(0xff8B8B8B),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  )),
                                              onPressed: () {
                                                showModalBottomSheet(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(100)),
                                                    isScrollControlled: true,
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return Container(
                                                        decoration: BoxDecoration(
                                                          color: Color(0xff3B3B3B),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.min,
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
                                                                    padding: const EdgeInsets.only(
                                                                        top: 20, right: 10, left: 10),
                                                                    child: Text(
                                                                      "Photographer",
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(color: Colors.white),
                                                                    ),
                                                                  )),
                                                            ),
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                    EdgeInsets.only(top: 0, right: 10)),
                                                                SizedBox(
                                                                  width: 190,
                                                                  child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 20, right: 10, left: 0),
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
                                                                            borderSide: BorderSide(
                                                                                color: Colors.white)),
                                                                        labelText: 'Enter First Name',
                                                                        labelStyle:
                                                                        TextStyle(color: Colors.white),
                                                                        hintText: 'Enter Your Enter First Name',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 190,
                                                                  child: Padding(
                                                                    padding:
                                                                    EdgeInsets.only(top: 20, right: 00),
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
                                                                            borderSide: BorderSide(
                                                                                color: Colors.white)),
                                                                        labelText: 'last Name',
                                                                        labelStyle:
                                                                        TextStyle(color: Colors.white),
                                                                        hintText: 'Enter Your Last Name',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),

                                                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                                                            const Padding(
                                                              padding:
                                                              EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                                                      borderSide:
                                                                      BorderSide(color: Colors.white)),
                                                                  labelText: 'Moblie no',
                                                                  labelStyle: TextStyle(color: Colors.white),
                                                                  hintText: 'Enter Your Moblie no',
                                                                ),
                                                              ),
                                                            ),
                                                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                                                            const Padding(
                                                              padding:
                                                              EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                                                      borderSide:
                                                                      BorderSide(color: Colors.white)),
                                                                  labelText: 'City',
                                                                  labelStyle: TextStyle(color: Colors.white),
                                                                  hintText: 'Enter Your city',
                                                                ),
                                                              ),
                                                            ),
                                                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                                                            const Padding(
                                                              padding:
                                                              EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                                                      borderSide:
                                                                      BorderSide(color: Colors.white)),
                                                                  labelText: 'Type Of Photographer',
                                                                  labelStyle: TextStyle(color: Colors.white),
                                                                  hintText: 'Enter Type Of Photographer',
                                                                ),
                                                              ),
                                                            ),
                                                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                                                            const Padding(
                                                              padding:
                                                              EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                                                      borderSide:
                                                                      BorderSide(color: Colors.white)),
                                                                  labelText: 'Company Name (Optional)',
                                                                  labelStyle: TextStyle(color: Colors.white),
                                                                  hintText:
                                                                  'Enter Your Company Name (Optional)',
                                                                ),
                                                              ),
                                                            ),
                                                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                                                            const Padding(
                                                              padding:
                                                              EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                                                      borderSide:
                                                                      BorderSide(color: Colors.white)),
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
                                                                      MaterialPageRoute(
                                                                          builder: (context) => Cont()),
                                                                    );
                                                                  },
                                                                  child: const Text(
                                                                    "Update",
                                                                    style: TextStyle(
                                                                        fontSize: 20, color: Colors.white),
                                                                  )),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: Text("Edit")),
                                        ),
                                        SizedBox(width: 70),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 50.0,
                                          ),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.red,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  )),
                                              onPressed: () {
                                                setState(() {
                                                  // _clindex1 = 0;
                                                });
                                              },
                                              child: Text("Delete")),
                                        ),
                                      ]),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, size: 40),
          backgroundColor: Colors.blue,
          onPressed: () {
            currentIndex == 1
                ? showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Color(0xff3B3B3B),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                                    padding:  EdgeInsets.only(
                                        top: 20, right: 10, left: 10),
                                    child: Text(
                                      "Photographer",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            ),
                          Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 0, right: 10)),
                                SizedBox(
                                  width: 190,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, right: 10, left: 0),
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
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        labelText: 'Enter First Name',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        hintText: 'Enter Your Enter First Name',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 190,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 00),
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
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        labelText: 'last Name',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        hintText: 'Enter Your Last Name',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelText: 'Moblie no',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintText: 'Enter Your Moblie no',
                                ),
                              ),
                            ),
                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelText: 'City',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintText: 'Enter Your city',
                                ),
                              ),
                            ),
                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelText: 'Type Of Photographer',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintText: 'Enter Type Of Photographer',
                                ),
                              ),
                            ),
                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelText: 'Company Name (Optional)',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintText:
                                      'Enter Your Company Name (Optional)',
                                ),
                              ),
                            ),
                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                                      MaterialPageRoute(
                                          builder: (context) => Cont()),
                                    );
                                  },
                                  child: const Text(
                                    "Add",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      );
                    })
                : showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Color(0xff3B3B3B),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                                      "Client",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            ),
                             Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, right: 10)),
                                SizedBox(
                                  width: 190,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, right: 10, left: 0),
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
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        labelText: 'Enter First Name',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        hintText: 'Enter Your Enter First Name',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 190,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 00),
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
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        labelText: 'last Name',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        hintText: 'Enter Your Last Name',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelText: 'Moblie no',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintText: 'Enter Your Moblie no',
                                ),
                              ),
                            ),
                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 20, top: 5),
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
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelText: 'City',
                                  labelStyle: TextStyle(color: Colors.white),
                                  hintText: 'Enter Your city',
                                ),
                              ),
                            ),
                            // const Padding(padding: EdgeInsets.only(left: 170,right: 30)),

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
                                      MaterialPageRoute(
                                          builder: (context) => Cont()),
                                    );
                                  },
                                  child: const Text(
                                    "Add",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      );
                    });
          }),
    );
    //     },
    //   )
    // );
  }
}
