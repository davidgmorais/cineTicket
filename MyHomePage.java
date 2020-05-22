import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CupertinoApp(
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
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
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
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold();
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold();
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text("What to watch"),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: <Widget>[
              Text("Tredning"),
            ],
          ),
        )
      ],
    );
  }
}
