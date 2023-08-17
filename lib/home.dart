import 'package:flutter/material.dart';
import 'package:scrren/asd.dart';
import 'package:scrren/contact.dart';
import 'package:scrren/jobs.dart';
import 'package:scrren/signup.dart';
import 'package:scrren/teams.dart';
import 'package:scrren/verify.dart';
import 'a12.dart';
import 'account.dart';
import 'jobs.dart';
import 'card.dart';
import 'calendar.dart';
import 'login.dart';
import 'profile.dart';
import 'card.dart';
import 'bottom.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Slide(),
    Cont(),
    A123(),
    // Job(),
    Cal(),
    const Tea(),
    Acc()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      body: IndexedStack(
        children: _widgetOptions,
        index: _selectedIndex,
      ),
      // Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.account_box),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.add_ic_call_outlined),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.camera),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.calendar_month),
            label: 'calendar',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.supervisor_account_rounded),
            label: 'team',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.import_contacts_outlined),
            label: 'account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
