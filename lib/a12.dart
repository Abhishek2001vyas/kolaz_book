import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
// import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;

class A123 extends StatefulWidget {
  const A123({super.key});

  @override
  State<A123> createState() => _A123State();
}

class _A123State extends State<A123> {
   late List<DateTime> selectedDates = [];
  Future<void> showdata() async {
    var picker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));
    print("$picker");

    selectedDates.add(picker!);
    setState(() {});
  }

  String? dropdownvalue;

  // List of items in our dropdown menu
  List<String> items = [
    'items1',
    'items2',
    'items3',
    'items4',
    'items5',
  ];
  int d = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff686767),
        appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text("Add New Quotation"),
            ),
            backgroundColor: Color(0xff303030)),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff3B3B3B),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          " Auto Q ID",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Color(0xff4A4949),borderRadius: BorderRadius.circular(10)),
                          width: 170,
                          height: 40,
                          child: TextField(decoration: InputDecoration(border: InputBorder.none),),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Client Name",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 040,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Color(0xff4A4949),borderRadius: BorderRadius.circular(10)),
                          width: 170,
                          height: 40,
                          child: TextField(decoration: InputDecoration(border: InputBorder.none),),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "City/Venue",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Color(0xff4A4949),borderRadius: BorderRadius.circular(10)),
                          width: 170,
                          height: 40,
                          child: TextField(decoration: InputDecoration(border: InputBorder.none),),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          " Event",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 89,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Color(0xff4A4949),borderRadius: BorderRadius.circular(10)),
                          width: 170,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              if (selectedDates.length <= 2)
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff3B3B3B),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    height: 58,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedDates.length,
                      shrinkWrap: true,

                      //   if (selectedDates.length<=2){
                      // physics: NeverScrollableScrollPhysics(),}

                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 10, bottom: 10, top: 10),
                          child: InkWell(
                          onTap: (){
                            setState(() {
                              d=0;
                            });
                          },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff605E5E),
                              ),
                              child: Stack(alignment: Alignment.topRight,children: [
                                
                                Positioned(bottom: 00,top:06,left: 41,child: IconButton(onPressed: (){}, icon: Icon(Icons.highlight_remove,color: Colors.blue,))),
                                Text(DateFormat('yyyy-MM-dd')
                                    .format(selectedDates[index])),

                              ],)





                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff3B3B3B),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    height: 58,
                    width: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedDates.length,

                      shrinkWrap: true,

                      //   if (selectedDates.length<=2){
                      // physics: NeverScrollableScrollPhysics(),}

                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 10, bottom: 10, top: 10),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                d=0;

                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff605E5E),
                              ),
                              child: Stack(children: [
                                Text(style: TextStyle(color: Colors.white), DateFormat('yyyy-MM-dd').format(selectedDates[index])),
                                Positioned(bottom: 0,top:06,left: 41,child: IconButton(onPressed:(){ print('$index');selectedDates.removeAt(index);
                                  }, icon: Icon(Icons.highlight_remove,color: Colors.blue,))),
                              ],),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                     const  Icon(
                        Icons.add_circle_rounded,
                        color: Colors.blue,
                        size: 30,
                      ),
                      TextButton(
                          onPressed: () => showdata(), child: Text("ADD DATE"))
                    ],
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 00, right: 30),
            child: Container(
              color: Color(0xff3B3B3B),
              height: 350,
              width: 350,
              child: Column(children: [
                const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 150, bottom: 10),
                    child: Text(
                      "Type Of Photographer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.bold),
                    )),
                Container(height: 210,
                  child: ListView.builder(
                    itemCount: d,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff605E5E),
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButton(
                            underline:const SizedBox(),
                            // Initial Value
                            value: dropdownvalue,
                            hint: Text('select'),
                            isExpanded: true,
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down,color: Colors.white),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),

                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue ?? '';
                              });
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        d = d + 1;
                      });

                      // var qwe();
                    },
                    icon: Icon(
                      Icons.add_circle_outlined,
                      color: Colors.blue,
                    )),
                Text(
                  'Add Type Of Photographer',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe UI'),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 00, right: 30),
            child: Container(
                color: Color(0xff3B3B3B),
                height: 200,
                width: 350,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(" Output",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 53),
                          Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff605E5E),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 200,
                              height: 40,
                              child: TextField(decoration: InputDecoration(border: InputBorder.none)),
                          ) ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("Amount",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 50),
                          Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff605E5E),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 200,
                              height: 40,
                              child: TextField(decoration: InputDecoration(border: InputBorder.none),))
                        ],
                      ),
                      SizedBox(height: 20),
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
                                    borderRadius: BorderRadius.circular(20.0),
                                  )),
                              onPressed: () {
                                setState(() {});
                              },
                              child: Text("Account")),
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ])));
  }
}
