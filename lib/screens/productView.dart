import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'defaultAppBar.dart';
import 'myCart.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int _counter = 0;
  int _selectedIndex = 0;

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar("Water Melon"),
      body: Swiper(
        scrollDirection: Axis.horizontal,
        itemWidth: MediaQuery.of(context).size.width * 0.8,
        itemHeight: MediaQuery.of(context).size.height * 0.7,
        viewportFraction: 0.8,
        scale: 0.9,
        itemCount: 5,
        layout: SwiperLayout.STACK,
        control: SwiperControl(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/ilk.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "water melon",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done_outline_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        "200 ml, 1x£25.00 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: _minus,
                      child: Icon(Icons.remove_circle_outline,
                          color: Colors.white),
                    ),
                    Text(
                      "$_counter",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w200),
                    ),
                    TextButton(
                      onPressed: _add,
                      child:
                          Icon(Icons.add_circle_outline, color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "£100.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "You have saved 0.54 (12%)",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCartPage()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.075,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffEC90E9),
                          Color(0xffF45D7E),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
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
    );
  }
}

BottomNavigationBarItem buildBottomNavigationBarItem(Icon ikon, String yazi) {
  return BottomNavigationBarItem(
    icon: ikon,
    label: yazi,
  );
}
