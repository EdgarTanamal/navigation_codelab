import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyNavigation(),
    );
  }
}

class MyNavigation extends StatefulWidget {
  @override
  _MyNavigationState createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Home (First Screen)'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/first');
            },
          ),
          ListTile(
            title: Text('Second Screen'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/second');
            },
          ),
          ListTile(
            title: Text('Third Screen'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/third');
            },
          ),
        ],
      ),
    );
  }
}
