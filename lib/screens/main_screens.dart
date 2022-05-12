import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home/home_screen.dart';
import 'near_me/near_me_screen.dart';
import 'my_findb/my_hobby_screen.dart';
import 'search/search_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NearMeScreen(),
          MyHobbyScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              label: '홈', icon: Icon(CupertinoIcons.home)),
          const BottomNavigationBarItem(
              label: '내 근처', icon: Icon(CupertinoIcons.placemark)),
          const BottomNavigationBarItem(
              label: '내 정보', icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}