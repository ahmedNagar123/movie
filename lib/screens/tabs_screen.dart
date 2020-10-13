import 'package:flutter/material.dart';

import 'favorite_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _page;
  int selectPageIndex = 0;

  @override
  void initState() {
    _page = [
      {
        'page': HomeScreen(),
        'title': 'Feed',
      },
      {
        'page': FavoriteScreen(),
        'title': 'favorite',
      },
      {
        'page': ProfileScreen(),
        'title': 'profile',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bodyContent,
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationBar,
          ),
        ],
      ),
    );
  }

  get bodyContent {
    return _page[selectPageIndex]['page'];
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: BottomNavigationBar(
        elevation: 4,
        onTap: _selectPage,
        iconSize: 25,
        backgroundColor: Colors.white,
        currentIndex: selectPageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.movie_filter_outlined),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}

//_page[selectPageIndex]['page'],
