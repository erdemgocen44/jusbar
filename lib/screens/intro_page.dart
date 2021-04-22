import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jusbar/screens/home_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      color: Color(0xFFA5A5A5),
      fontSize: 14.0,
      fontFamily: 'Roboto',
    );

    const pageDecoration = const PageDecoration(
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: '',
          body: '''It’s available in your favorite cities now
and thy wait! go and order 
four favorite juices ''',
          image: Image.asset('assets/images/intro1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: '',
          body: '''Juice is a beverage made from the 
extraction or pressing out of natural liquid
contained good quality fruits''',
          image: Image.asset('assets/images/intro2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: '',
          body: '''User can look for their favorite juices
and buy it through the online gateway
process or through cash on delivery''',
          image: Image.asset('assets/images/intro3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipColor: Color(0xFF939393),
      doneColor: Color(0xFF939393),
      nextColor: Color(0xFF939393),
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),

      dotsDecorator: const DotsDecorator(
        size: Size(50.0, 8.0),
        color: Color(0xFFEFEFEF),
        activeSize: Size(50.0, 8.0),
        shape: StadiumBorder(),
        activeShape: StadiumBorder(),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
