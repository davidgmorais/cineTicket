import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<MyHomePage> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    ThirdPage(),
  ];

  int _tabIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: tabs[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
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

  /*@override
  Widget build(BuildContext context) {
    return BottomNavigationBarSc(
        tabBar: CupertinoTabBar(items: [
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
        ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return FirstPage();
              break;
            case 1:
              return SecondPage();
              break;
            case 2:
              return ThirdPage();
              break;
            default:
              return FirstPage();
              break;
          }
        });
  }*/
}
