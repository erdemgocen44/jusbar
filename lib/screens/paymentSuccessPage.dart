import 'package:flutter/material.dart';
import 'package:jusbar/screens/jusbar_menu_page.dart';

class PaymentSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xff97DEB4),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: Icon(
                          Icons.done_rounded,
                          size: 100,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Payment Success!",
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff888888),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Thank You..",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff888888),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 15,
              left: 60,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JusbarMenuPage(),
                    ),
                  );
                },
                child: Text(
                  "X",
                  style: TextStyle(
                      color: Color(0xffB3B3B3),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
