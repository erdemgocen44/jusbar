import 'package:flutter/material.dart';

AppBar buildDefaultAppBar(
  String title,
) {
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
  );
}
