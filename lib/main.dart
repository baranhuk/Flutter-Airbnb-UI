import 'package:air_bnb_ui/screens/explore_screen.dart';
import 'package:air_bnb_ui/screens/other_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedScreen = 0;

  final screenOptions = [
    ExploreScreen(),
    OtherScreen(otherScreen: 'Saved'),
    OtherScreen(otherScreen: 'Trips'),
    OtherScreen(otherScreen: 'Inbox'),
    OtherScreen(otherScreen: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airbnb',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Color(0xFFFF5A60),
      ),
      home: Scaffold(
        body: screenOptions[selectedScreen],
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            iconSize: 25,
            unselectedFontSize: 11,
            selectedFontSize: 11,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedScreen,
            onTap: (int index) {
              setState(() {
                selectedScreen = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.search),
                title: Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    'EXPLORE',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.heart),
                title: Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    'SAVED',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.airbnb),
                title: Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    'TRIPS',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.commentAlt),
                title: Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    'INBOX',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user),
                title: Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    'PROFILE',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
