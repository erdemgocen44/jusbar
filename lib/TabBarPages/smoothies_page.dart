import 'package:flutter/material.dart';

class SmoothiesPage extends StatefulWidget {
  @override
  _SmoothiesPageState createState() => _SmoothiesPageState();
}

class _SmoothiesPageState extends State<SmoothiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffF45D7E),
                          Color(0xffEC90E9),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'watermelon',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '₹50.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Expanded(
              //   flex: 1,
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 10.0),
              //     child: Container(
              //       height: MediaQuery.of(context).size.height * 0.12,
              //       decoration: BoxDecoration(
              //         color: Colors.purple,
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
