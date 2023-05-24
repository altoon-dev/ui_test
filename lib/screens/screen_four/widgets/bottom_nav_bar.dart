import 'package:flutter/material.dart';

class BottomNavBarUS extends StatefulWidget {
  const BottomNavBarUS({Key? key}) : super(key: key);

  @override
  State<BottomNavBarUS> createState() => _BottomNavBarUSState();
}

class _BottomNavBarUSState extends State<BottomNavBarUS> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      selectedItemColor: Color(0xff22BB9C),
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: 'Создать',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.car_crash),
          label: 'Поездки',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: 'Профиль',
        ),
      ],
    );
  }
}
