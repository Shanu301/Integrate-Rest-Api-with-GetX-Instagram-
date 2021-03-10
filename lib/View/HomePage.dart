import 'package:flutter/material.dart';
import 'package:flutter_app/View/FeedPage.dart';
import 'package:flutter_app/View/SearchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int page = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this) //
      ..addListener(() {
        setState(() {
          page = _tabController.index;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(

        controller: _tabController,
        children: <Widget>[
          FeedPage(),
          SearchPage(),
          SearchPage(),
          SearchPage(),
          SearchPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        onTap: (int index) {
          setState(() => page = index);
          _tabController.animateTo(index);
        },
        fixedColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.red,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.red,
            ),
            label: 'AddPost',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.red,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: Colors.red,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}