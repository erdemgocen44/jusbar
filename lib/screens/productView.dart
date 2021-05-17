import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'defaultAppBar.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar("Water Melon"),
      body: Swiper(
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
                        Icons.add_photo_alternate_sharp,
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
                  ],
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemWidth: MediaQuery.of(context).size.width * 0.8,
        itemHeight: MediaQuery.of(context).size.height * 0.7,
        viewportFraction: 0.8,
        scale: 0.9,
        itemCount: 5,
        layout: SwiperLayout.STACK,
        control: SwiperControl(),
      ),
    );
  }
}
