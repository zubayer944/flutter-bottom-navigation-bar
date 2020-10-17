import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/four.dart';
import 'package:flutter_bottom_navigation_bar/one.dart';
import 'package:flutter_bottom_navigation_bar/three.dart';
import 'package:flutter_bottom_navigation_bar/two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;
  final pages = [
    One(),
    Two(),
    Three(),
    Four(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: ([
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.message),
                title: Text("Message")),
            BottomNavigationBarItem(
                icon: Icon(Icons.call), title: Text("Call")),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album), title: Text("photo album")),
            BottomNavigationBarItem(
                icon: Icon(Icons.radio), title: Text("Radio")),
          ]),
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
        body: pages[_currentindex]);
  }
}
