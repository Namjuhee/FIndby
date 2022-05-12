import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'screens/main_screens.dart';
import 'theme.dart';
import 'main.dart';
import 'package:findbytest1/login_page/login_page_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Welcome to FINDBY!',
            body: "FindBy는\n "
                "당신의 취미를 찾아드립니다!",
            image: Image.asset('assets/images/logo.jpg'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'FINDBY의 장점은?',
            body: "가까운 거리에서 손쉽게!\n"
                "신뢰도 높은 후기!",
            image: Image.asset('assets/images/img_6.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: '환영합니다!',
            body: "잠재되어있던 당신의 취미!\n "
                "즐기러 가볼까요?",
            image: Image.asset('assets/images/img_5.png'),
            decoration: getPageDecoration()
        ),

      ],
      done: const Text('done'),
      onDone: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>const LoginPageWidget()),
        );
      },
      next:const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.black,
        size: const Size(10,10),
        activeSize: const Size(22,10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        ),
        activeColor: Colors.black
      ),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration(){
    return PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.black
        ),
        imagePadding: EdgeInsets.only(top:20),
        pageColor: Colors.white
    );
  }
}
