import 'package:flutter/material.dart';
import 'package:jusbar/TabBarPages/smoothies_page.dart';

class JusbarMenuPage extends StatefulWidget {
  @override
  _JusbarMenuPageState createState() => _JusbarMenuPageState();
}

class _JusbarMenuPageState extends State<JusbarMenuPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFCFCFC),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: 15,
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.face,
                  color: Color(0xffD3D8E0),
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
          bottom: TabBar(
            tabs: [
              buildTab(
                'smoothies',
                Colors.black,
              ),
              buildTab(
                'pastry',
                Color(0xffD0D0D0),
              ),
              buildTab(
                'icemix',
                Color(0xffD0D0D0),
              ),
              buildTab(
                'mix',
                Color(0xffD0D0D0),
              ),
            ],
          ),
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

  Tab buildTab(String text, Color renk) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: renk,
        ),
      ),
    );
  }
}
