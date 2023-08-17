// import 'package:flutter/material.dart';
//
//
// import 'package:intl/date_symbol_data_local.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart' ;
// import 'package:date_format/date_format.dart';
// import 'package:flutter_date_range_picker/flutter_date_range_picker.dart' as DateRangePicker;
//
//
// class Asd extends StatefulWidget {
//   const Asd({super.key});
//
//   @override
//   State<Asd> createState() => _AsdState();
// }
//
// class _AsdState extends State<Asd> {
//
//   TextEditingController date = TextEditingController();
//   int qwe = 0;
//   int rty = 0;
//   DateTime _dateTime = DateTime.now();
//   TextEditingController time = TextEditingController();
//   String dropdownvalue = 'Candid Photography';
//
//
//   //   var lkl=ListView.builder(itemCount: 1,itemBuilder: (context, index) {
//   //   return   Padding(
//   //     padding: const EdgeInsets.all(8.0),
//   //     child: Container(decoration: BoxDecoration(
//   //         color: Colors.grey),child: Row(
//   //       children: [
//   //         Text(_dateTime.year.toString(),style: TextStyle(),),Text("-"),
//   //         Text(_dateTime.month.toString(),style: TextStyle(),),Text("-"),Text(_dateTime.day.toString(),style: TextStyle(),),
//   //       ],
//   //     )),
//   //   );
//   // },
//   //   );
//
//   //
//   //
//   // Future<void> _selectDateRange(BuildContext context) async {
//   //   final List<DateTime> picked = await DateRangePicker.showDatePicker(
//   //     context: context,
//   //     initialFirstDate: DateTime.now(),
//   //     initialLastDate: DateTime.now().add(Duration(days: 7)),
//   //     firstDate: DateTime(2020),
//   //     lastDate: DateTime(2025),
//   //   );
//   //
//   //   if (picked != null && picked.length == 2) {
//   //     setState(() {
//   //       selectedDates = picked;
//   //     });
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     List selectedDates = [];
//     void showdata(){
//      List <DateTime> ? picked=
//      showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2020),
//         lastDate: DateTime(2025),
//       );
// //         .then((value){
// // setState(() {
// //   _dateTime=value!;
// // });});
//       if (picked != null && picked.length == 1) {
//         setState(() {
//           selectedDates =picked;
//           print('$selectedDates');
//         });
//       }}
//
//
//     return Scaffold(
//
//         body:
//             // Padding(
//             //     padding: const EdgeInsets.only(top: 30, right: 70, left: 70),
//             //     child: ToggleButtons(
//             //       constraints: const BoxConstraints(
//             //         minHeight: 60.0,
//             //         minWidth: 130.0,
//             //       ),
//             //       color: Colors.black87,
//             //       fillColor: Colors.blue,
//             //       focusColor: Colors.blue,
//             //       borderWidth: 2,
//             //       renderBorder: true,
//             //       selectedColor: Colors.blue,
//             //       borderRadius: BorderRadius.circular(14.0),
//             //       children: [
//             //         Text("Client", style: TextStyle(color: Colors.white)),
//             //         Text("photographers", style: TextStyle(color: Colors.white))
//             //       ],
//             //       isSelected: Selected,
//             //       onPressed: (index) {
//             //         if (index ==1){
//             //           setState(() {
//             //             Selected=[false,true];
//             //
//             //
//             //           });
//             //         }
//             //         print("$index");},
//             //     )
//             // ),
//             SingleChildScrollView(
//           child: Column(
//             children: [
//
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
//                     child: Container(
//                       child: Column(children: [ ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: selectedDates.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           return ListTile(
//                             title: Text( selectedDates.toString()),
//                           );
//                         },
//                       ),
//                       //   Expanded(
//                       //     child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 3,itemBuilder: (context, index) {
//                       //     return Padding(
//                       //       padding: const EdgeInsets.all(8.0),
//                       //       child: Container(decoration: BoxDecoration(
//                       //           color: Colors.grey),child: Row(
//                       //         children: [
//                       //           Text(_dateTime.year.toString(),style: TextStyle(),),Text("-"),
//                       //           Text(_dateTime.month.toString(),style: TextStyle(),),Text("-"),Text(_dateTime.day.toString(),style: TextStyle(),),
//                       //         ],
//                       //       )),
//                       //     );
//                       // },),
//                       //   )
//
//                     ]),),
//                   ),
//                   // Padding(
//                   //   padding:
//                   //       const EdgeInsets.only(left: 30, top: 20, right: 20),
//                   //   child: Container(
//                   //       width: 180,
//                   //       height: 70,
//                   //       decoration: BoxDecoration(
//                   //           color: Color(0xff3B3B3B),
//                   //           borderRadius: BorderRadius.only(
//                   //               topLeft: Radius.circular(12),
//                   //               topRight: Radius.circular(12))),
//                   //       child: Padding(
//                   //         padding: const EdgeInsets.only(
//                   //             right: 10, top: 10, left: 10, bottom: 10),
//                   //         child: Row(
//                   //           children: [
//                   //             Container(
//                   //               height: 50,
//                   //               width: 70,
//                   //               decoration:
//                   //                   BoxDecoration(color: Color(0xff605E5E)),
//                   //               child: TextField(
//                   //                 controller: date,
//                   //               ),
//                   //             ),
//                   //             SizedBox(width: 20),
//                   //             Container(
//                   //               width: 70,
//                   //               height: 50,
//                   //               decoration:
//                   //                   BoxDecoration(color: Color(0xff605E5E)),
//                   //               child: TextField(
//                   //                 controller: time,
//                   //               ),
//                   //             )
//                   //           ],
//                   //         ),
//                   //       )),
//                   // ),
//                   // SizedBox(
//                   //   width: 00,
//                   // ),
//
//                         TextButton(onPressed:(), child: Text("add")),
//                         // TextButton(onPressed:showdata,child: Text("ADD DATE"))
//                             // onPressed: () async {
//                             //   DateTime? picker = await showDatePicker(
//                             //       context: context,
//                             //       initialDate: DateTime.now(),
//                             //       firstDate: DateTime(2000),
//                             //       lastDate: DateTime(3000));
//                             //
//                             //   if (picker != null) {
//                             //     if (qwe == 0) {
//                             //       setState(() {
//                             //         date.text =
//                             //             formatDate(picker, [dd, mm, yyyy]);
//                             //         qwe = qwe + 1;
//                             //       });
//                             //     } else if (qwe == rty) {
//                             //       setState(() {
//                             //         date.text =
//                             //             formatDate(picker, [dd, mm, yyyy]);
//                             //         qwe = qwe + 1;
//                             //       });
//                             //     } else {
//                             //       setState(() {
//                             //         time.text =
//                             //             formatDate(picker, [dd, mm, yyyy]);
//                             //         rty = rty + 1;
//                             //       });
//                             //     }
//                             //   }
//                             // },
//
//
//
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//
//               // Padding(
//               //   padding:
//               //       const EdgeInsets.only(bottom: 00.0, right: 30, left: 30),
//               //   child: Container(
//               //     decoration: BoxDecoration(color: Color(0xff3B3B3B)),
//               //     child: Column(children: [
//               //       Text("Type Of Photographer"),
//               //
//               //       Row(
//               //         children: [
//               //           Container(
//               //               width: 200,
//               //               height: 300,
//               //               decoration:
//               //                   BoxDecoration(color: Color(0xff00000029)),
//               //               child: DropdownMenuItem(
//               //                 value: "Candid Photography",
//               //                 child: Row(children: [
//               //                   Icon(Icons.arrow_drop_down_outlined)
//               //                 ]),
//               //               )),
//               //         ],
//               //       ),
//               //
//               //       // Container(child: Text( ),),
//               //     ]),
//               //   ),
//               // )
//
//             ],
//           ),
//         ));
//   }}
//
//
