import 'package:flutter/material.dart';
import 'package:jusbar/screens/jusbar_menu_page.dart';
import 'package:jusbar/screens/register_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingController;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Login',
                style: buildTextStyle16(),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildTextFormField('Username'),
                      SizedBox(
                        height: 20,
                      ),
                      buildTextFormField('Password'),
                      SizedBox(
                        height: 50,
                      ),
                      buildContainerButton(),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Color(0xffA9A9A9),
                                ),
                              ),
                            ),
                            child: buildTextButton(
                              '     Google       ',
                              Color(0xFFF05F5F),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Color(0xffA9A9A9),
                                ),
                              ),
                            ),
                            child: buildTextButton(
                              '     FaceBook       ',
                              Color(0xff3884C6),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: buildTextButton(
                              '     Twitter       ',
                              Color(0xff4CAAFC),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildTextButtonAlt(
                            'Forgot Password',
                            Color(
                              0xFF939393,
                            ),
                          ),
                          buildTextButtonAlt(
                            'Create new account',
                            Color(
                              0xFF939393,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextButton buildTextButtonAlt(String text, Color renk) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterPage()),
        );
      },
      child: Text(
        text,
        style: TextStyle(
          color: renk,
          fontSize: 13,
        ),
      ),
    );
  }

  TextButton buildTextButton(String yazi, Color renk) {
    return TextButton(
      onPressed: () {},
      child: Text(
        yazi,
        style: TextStyle(
          color: renk,
          fontSize: 11,
        ),
      ),
    );
  }

  Container buildContainerButton() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
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
            MaterialPageRoute(builder: (context) => JusbarMenuPage()),
          );
        },
        child: Text(
          ' Login ',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField(String hintext) {
    return TextFormField(
      autofocus: true,
      validator: (value) {},
      controller: _textEditingController,
      decoration: InputDecoration(
        hintText: hintext,
      ),
    );
  }

  TextStyle buildTextStyle16() {
    return TextStyle(
      fontSize: 16,
      fontFamily: 'Roboto',
      color: Color(0xFF747474),
    );
  }
}
