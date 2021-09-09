import 'package:flutter/material.dart';
import 'package:first_app/constants/color_cons.dart';
import 'home_screen.dart';
import 'card_screen.dart';
import 'setting_screen.dart';
import 'overview_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    SettingScreen(),
    OverviewScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              // fontawesome home
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              // fontawesome creditCard
              icon: Icon(Icons.card_membership),
              label: "Cards"),
          BottomNavigationBarItem(
              // fontawesome cog
              icon: Icon(Icons.settings),
              label: "Settings"),
          BottomNavigationBarItem(
              // fontawesome charBar
              icon: Icon(Icons.chat_rounded),
              label: "Overview"),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
