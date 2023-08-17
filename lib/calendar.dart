import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  DateTime today=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff686767),
      appBar: AppBar(backgroundColor: Color(0xff303030),
        title: Padding(
          padding: const EdgeInsets.only(left: 200),
          child: Text("Calendar",style: TextStyle(color: Colors.blue)),
        ),
      ),
      body:
      Theme(data: ThemeData(backgroundColor: Color(0xff686767),),
        child: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10,top: 40),
          child: Column(
            children: [Center(child: Text("Calendar",textAlign: TextAlign.justify,)),
              Container(decoration: BoxDecoration(color: Color(0xff343434),),
                child: TableCalendar(focusedDay: today, firstDay:DateTime.utc(1947,1,1), lastDay: DateTime.utc(3000,1,1),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
