import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'Login.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'Profile.dart';

void main() => runApp(MaterialApp(
      home: Login(),
    ));

class MyHomePage extends StatefulWidget {
  int tab;
  MyHomePage(int i) {
    this.tab = i;
  }

  State<StatefulWidget> createState() {
    return _HomeState(this.tab);
  }
}

class _HomeState extends State<MyHomePage> {
  int currentTabIndex = 0;
  int _tabIndex = 0;

  _HomeState(int tab) {
    this._tabIndex = tab;
  }

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(147, 172, 243, 1),
        currentIndex: _tabIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            title: Text("Movies"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            title: Text("Tickets"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          )
        ],
      ),
    );
  }
}
