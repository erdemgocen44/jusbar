import 'package:flutter/material.dart';
import 'package:jusbar/TabBarPages/smoothies_page.dart';

import 'home_page.dart';
import 'register_page.dart';

class JusbarMenuPage extends StatefulWidget {
  @override
  _JusbarMenuPageState createState() => _JusbarMenuPageState();
}

class _JusbarMenuPageState extends State<JusbarMenuPage> {
  int _selectedIndex = 0;
  final List<Widget> ekranlar = [
    RegisterPage(),
    HomePage(),
    JusbarMenuPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          onTap: _onItemTapped,
          elevation: 10,
          items: [
            buildBottomNavigationBarItem(Icon(Icons.home), "Home"),
            buildBottomNavigationBarItem(
                Icon(Icons.shopping_cart), "Shopping Cart"),
            buildBottomNavigationBarItem(Icon(Icons.person), "Personal"),
          ],
        ),
        body: TabBarView(
          children: [
            SmoothiesPage(),
            SmoothiesPage(),
            SmoothiesPage(),
            SmoothiesPage(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xffFCFCFC),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: 15,
          ),
        ),
        IconButton(
            icon: Icon(
              Icons.alarm,
              color: Colors.blueAccent,
              size: 30,
            ),
            onPressed: () {}),
      ],
      title: Center(
        child: Text(
          'Jusbar',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(
              0xffA4A4A4,
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.amber.withOpacity(0.3),
          indicatorColor: Colors.amber,
          indicatorWeight: 7,
          labelColor: Colors.black,
          tabs: [
            Container(
                width: 75, child: buildTab('smoothies', Colors.black, 15)),
            Container(width: 75, child: buildTab('pastry', Colors.black, 15)),
            Container(width: 75, child: buildTab('icemix', Colors.black, 15)),
            Container(width: 75, child: buildTab('mix', Colors.black, 15)),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(Icon ikon, String yazi) {
    return BottomNavigationBarItem(
      icon: ikon,
      label: yazi,
    );
  }

  Tab buildTab(String text, Color renk, double size) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: renk,
        ),
      ),
    );
  }
}
