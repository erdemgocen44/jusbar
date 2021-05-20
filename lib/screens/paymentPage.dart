import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'defaultAppBar.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  CarouselController buttonCarouselController = CarouselController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: buildDefaultAppBar("Payment"),
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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                initialPage: 2,
              ),
              carouselController: buttonCarouselController,
              items: [
                buildContainerCreditCard("assets/images/creditCard1.png"),
                buildContainerCreditCard("assets/images/creditCard3.png"),
                buildContainerCreditCard("assets/images/creditCard2.png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildDefaultText("Payment Options", FontWeight.bold,
                        Color(0xff888888), 13),
                    buildDefaultText("Credit / Debit Card", FontWeight.w100,
                        Color(0xff939393), 14),
                    buildDividerContainer(Color(0xff383838)),
                    buildDefaultText("Payment Gateways", FontWeight.w100,
                        Color(0xff939393), 14),
                    buildDividerContainer(Color(0xff383838)),
                    buildDefaultText("Cash On Delivery", FontWeight.w100,
                        Color(0xff939393), 14),
                    buildDividerContainer(Color(0xff383838)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff348DEA),
                                Color(0xff9AFFE4),
                              ],
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                buildDefaultText("Payment Amount",
                                    FontWeight.w100, Color(0xffffffff), 9),
                                buildDefaultText("₹150.00", FontWeight.bold,
                                    Color(0xffffffff), 19),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff9AFFE4),
                                Color(0xff348DEA),
                              ],
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: buildDefaultText("₹150.00", FontWeight.bold,
                                Color(0xffffffff), 19),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDividerContainer(Color renk) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Divider(
          height: 5,
          color: renk,
        ));
  }

  Text buildDefaultText(
      String yazi, FontWeight kalinlik, Color renk, double size) {
    return Text(
      yazi,
      style: TextStyle(
        fontWeight: kalinlik,
        fontSize: size,
        color: renk,
      ),
    );
  }

  Container buildContainerCreditCard(String resim) {
    return Container(
      child: Image.asset(resim),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(Icon ikon, String yazi) {
    return BottomNavigationBarItem(
      icon: ikon,
      label: yazi,
    );
  }
}
