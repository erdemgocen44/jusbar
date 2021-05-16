import 'package:flutter/material.dart';
import 'package:jusbar/screens/productView.dart';

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
          buildRowJusbar(Color(0xffF45D7E), Color(0xffEC90E9), "watermelon",
              '₹50.00', "assets/images/watermelon.png"),
          buildRowJusbar(Color(0xffFD9B8D), Color(0xffFBBE7E), "mango",
              '₹43.00', "assets/images/mango.png"),
          buildRowJusbar(Color(0xffA076E8), Color(0xffB1C4F8), "blueberry",
              '₹60.00', "assets/images/blueberries.png"),
          buildRowJusbar(Color(0xff5CCD92), Color(0xffbfe89c), "avakado",
              '₹25.00', "assets/images/avacado.png"),
          buildRowJusbar(Color(0xffA86FDA), Color(0xffF5B9D5), "grape",
              '₹35.00', "assets/images/grape.png"),
          buildRowJusbar(Color(0xffF45D7E), Color(0xffEC90E9), "apple",
              '₹45.00', "assets/images/apple.png"),
        ],
      ),
    );
  }

  Row buildRowJusbar(
      Color renk1, Color renk2, String icecekAdi, String fiyat, String resim) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductView(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [
                      renk1,
                      renk2,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      icecekAdi,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      fiyat,
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
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Image.asset(resim),
        ),
      ],
    );
  }
}
