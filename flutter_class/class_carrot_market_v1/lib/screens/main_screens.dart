import 'package:class_carrot_market_v1/chatting/chatting_screen.dart';
import 'package:class_carrot_market_v1/home/home_screen.dart';
import 'package:class_carrot_market_v1/my_carrot/my_carrot_screen.dart';
import 'package:class_carrot_market_v1/near_me/near_me_screen.dart';
import 'package:class_carrot_market_v1/neighborhood_life/neighborhood_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
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
          NeighborhoodScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_on_square), label: '동네생활'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.placemark), label: '내 근처'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2), label: '채팅'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: '나의 당근'),
        ],
      ),
    );
  }
}
