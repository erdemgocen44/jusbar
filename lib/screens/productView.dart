import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Icons.alarm,
                color: Color(0xffD3D8E0),
                size: 30,
              ),
              onPressed: () {}),
        ],
        title: Center(
          child: Text(
            'Water Melon',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(
                0xffA4A4A4,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
