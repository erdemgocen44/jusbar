import 'package:flutter/material.dart';
import 'package:jusbar/screens/home_page.dart';
import 'package:jusbar/screens/jusbar_menu_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                height: 50,
              ),
              Text(
                'Register',
                style: buildTextStyle16(),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildTextFormField('Name'),
                      SizedBox(
                        height: 20,
                      ),
                      buildTextFormField('E-Mail'),
                      SizedBox(
                        height: 20,
                      ),
                      buildTextFormField('Mobile'),
                      SizedBox(
                        height: 20,
                      ),
                      buildTextFormField('Create Password'),
                      SizedBox(
                        height: 40,
                      ),
                      buildContainerButton(),
                      SizedBox(
                        height: 40,
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
                        height: 50,
                      ),
                      buildTextButtonAlt(
                        'Already have an account? Login',
                        Color(
                          0xFF939393,
                        ),
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
          MaterialPageRoute(builder: (context) => HomePage()),
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
          'Register',
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
