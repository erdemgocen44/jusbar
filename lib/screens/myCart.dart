import 'package:flutter/material.dart';
import 'defaultAppBar.dart';
import 'paymentPage.dart';

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  int _counter = 0;

  void _minus() {
    setState(() {
      if (_counter != 0) _counter--;
      print(_counter);
    });
  }

  void _add() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

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
      appBar: buildDefaultAppBar("My Cart"),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: buildContainerProduct(
                  "assets/images/small1.png", "₹50.00", "water melon"),
            ),
            buildSizedBox(10),
            buildContainerProduct(
                "assets/images/small2.png", "₹100.00", "blueburry"),
            buildSizedBox(10),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Orders',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff585858),
                        ),
                      ),
                      buildPaddingAndText(
                          'Bill Total', '₹150.00', FontWeight.w100),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(
                          height: 5,
                          color: Color(0xff383838),
                        ),
                      ),
                      buildPaddingAndText('Discount', '₹0', FontWeight.w100),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider(
                          height: 5,
                          color: Color(0xff383838),
                        ),
                      ),
                      buildPaddingAndText(
                          'Grand Total', '₹150.00', FontWeight.bold),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFEE87D7),
                                Color(0xFFF46186),
                              ],
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Proceed to pay",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox(double yukseklik) {
    return SizedBox(
      height: yukseklik,
    );
  }

  Padding buildPaddingAndText(String urun, String fiyat, FontWeight font) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            urun,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff585858),
              fontWeight: font,
            ),
          ),
          Text(
            fiyat,
            style: TextStyle(
                fontSize: 16, color: Color(0xff585858), fontWeight: font),
          ),
        ],
      ),
    );
  }

  Container buildContainerProduct(String resim, String fiyat, String icecek) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.17,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(resim),
                  Column(
                    children: [
                      Text(
                        icecek,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff767676),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.done_outline_rounded,
                            color: Color(0xffFFB4DC),
                          ),
                          Text(
                            "200 ml, 1x£25.00 ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff8E8E8E),
                                fontSize: 13,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    color: Colors.red,
                    iconSize: 35,
                    icon: Icon(Icons.cancel_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xff8E8E8E),
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: _minus,
                      child: Icon(Icons.remove_circle_outline,
                          color: Color(0xffC9C9C9)),
                    ),
                    Text(
                      '$_counter',
                      style: TextStyle(
                          color: Color(0xff959595),
                          fontSize: 17,
                          fontWeight: FontWeight.w200),
                    ),
                    TextButton(
                      onPressed: _add,
                      child: Icon(
                        Icons.add_circle_outline,
                        color: Color(0xffC9C9C9),
                      ),
                    ),
                  ],
                ),
                Text(
                  fiyat,
                  style: TextStyle(fontSize: 18, color: Color(0xff777777)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

BottomNavigationBarItem buildBottomNavigationBarItem(Icon ikon, String yazi) {
  return BottomNavigationBarItem(
    icon: ikon,
    label: yazi,
  );
}
