import 'package:flutter/material.dart';

AppBar buildAppBar(
  String title,
) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Color(0xffC2C8D1), //change your color here
    ),
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
            color: Color(0xffD3D8E0),
            size: 30,
          ),
          onPressed: () {}),
    ],
    title: Center(
      child: Text(
        title,
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
          Container(width: 75, child: buildTab('smoothies', Colors.black, 15)),
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
