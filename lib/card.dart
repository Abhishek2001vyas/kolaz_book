import 'package:flutter/material.dart';
import 'profile.dart';

class Slide extends StatelessWidget {
  const Slide();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff575656),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            size: 40,
            Icons.account_circle,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
            //  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
            child: Card(
              color: Colors.grey,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  icon: Icon(Icons.notifications_active)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
            child: Card(
              color: Colors.grey,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  icon: Icon(
                    Icons.email,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
            child: Card(
              color: Colors.grey,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                icon: Icon(Icons.settings),
              ),
            ),
          )
        ],
        title: Padding(
            padding: EdgeInsets.only(right: 20, left: 1),
            //       child:
            // TextButton(

            //           onPressed: () {
            //             Navigator.push(context,
            //                 MaterialPageRoute(builder: (context) => Profile()));
            //           },
            child: Text(
              "Abhishek vyas",
              style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
            )
            // ),
            ),
      ),
      body: SizedBox(
        // height: MediaQuery.of(context).size.height/4,
        // width: MediaQuery.of(context).size.width/1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25, right: 200),
                child: Text("Upcoming Clients Jobs",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily:'Poppins' ),
                    textDirection: TextDirection.ltr),
              ),
              Padding(
                // padding: EdgeInsets.all(10),
                padding: EdgeInsets.only(
                  top: 05,
                ),
                child: Container(
                    // padding: EdgeInsets.only(bottom: 40,right: 10,left: 10,top: 10),
                    // decoration: BoxDecoration(gradient: LinearGradient(colors: [color(0xff686767)])),
                    height: MediaQuery.of(context).size.height / 5,
                    width: 400,
                    // padding: EdgeInsets.all(35),
                    // margin: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   border: Border.all( width: 4),
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: ListView.builder(
                        shrinkWrap: true,
                        //physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Color(0xff3B3B3B),
                              elevation: 10,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 30, left: 30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Order Id",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 150,
                                          ),
                                          Text("12334",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Client Name",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 100,
                                          ),
                                          Text("Shubham",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("City",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 180,
                                          ),
                                          Text("Indore",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Event",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 150,
                                          ),
                                          Text("Wedding",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 25),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Date",
                                                style: TextStyle(
                                                    color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                            SizedBox(
                                              width: 130,
                                            ),
                                            Text("25 April 2023",
                                                style: TextStyle(
                                                    color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                        })),
              ),
              Padding(
                padding: EdgeInsets.only(right: 175, top: 10),
                child: Text("Upcoming Freelencing Jobs",
                    style: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr),
              ),
              Padding(
                // padding: EdgeInsets.all(10),
                padding: EdgeInsets.only(
                  top: 05,
                ),
                child: Container(
                    // padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 40),
                    // decoration: BoxDecoration(gradient: LinearGradient(colors: [color(0xff686767)])),
                    height: MediaQuery.of(context).size.height / 5,
                    width: 400,
                    // padding: EdgeInsets.all(35),
                    // margin: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   border: Border.all( width: 4),
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: ListView.builder(
                        shrinkWrap: true,
                        //physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Color(0xff06D6A6A),
                              elevation: 10,
                              child:  Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 30, left: 30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Order Id",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 150,
                                          ),
                                          Text("KB001",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Photographer Name",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Text("Shubham",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("City",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 180,
                                          ),
                                          Text("Indore",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Event",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 120,
                                          ),
                                          Text("Pre Wedding",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 25),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Date",
                                                style: TextStyle(
                                                    color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                            SizedBox(
                                              width: 170,
                                            ),
                                            Text("12334",
                                                style: TextStyle(
                                                    color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                        })),
              ),
              Padding(
                padding: EdgeInsets.only(right: 50, top: 10),
                child: Text("Photographer yet to be allotment Clients Jobs",
                    style: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr),
              ),
              Padding(
                // padding: EdgeInsets.all(10),
                padding: EdgeInsets.only(
                  top: 05,
                ),
                child: Container(
                    // padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 100),
                    // decoration: BoxDecoration(gradient: LinearGradient(colors: [color(0xff686767)])),
                    height: MediaQuery.of(context).size.height / 6,
                    width: 400,
                    // padding: EdgeInsets.all(35),
                    // margin: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   border: Border.all( width: 4),
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: ListView.builder(
                        shrinkWrap: true,
                        //physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Color(0xff3B3B3B),
                              elevation: 10,
                              child:  Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 30, left: 30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Order Id",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 160,
                                          ),
                                          Text("KB001",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Client id",
                                              style: TextStyle(
                                                  color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                          SizedBox(
                                            width: 120,
                                          ),
                                          Text("Jhanvi Shah",
                                              style: TextStyle(
                                                  color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 25),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("City",
                                                style: TextStyle(
                                                    color: Colors.blue,fontFamily: 'Poppins',fontWeight: FontWeight.normal)),
                                            SizedBox(
                                              width: 170,
                                            ),
                                            Text("Mumbai",
                                                style: TextStyle(
                                                    color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        })),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: (Image.asset('assets/image/Group 72644.png',
                    scale: 7, height: 50, width: 50, fit: BoxFit.fill)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
