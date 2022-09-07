import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petplanet/firebase_options.dart';
import '../../../../constants.dart';
import 'splash_context.dart';

import '../../../shared/components/default_button.dart';
import '../../sign_in/sign_in_screen.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to PET PLANET, Let’s shop!",
      "image": "assets/images/onboard3.png"
    },
    {
      "text": "Caring for your pets has never been so easy !",
      "image": "assets/images/onboard1.png"
    },
    {
      "text": "With PET PLANET, you can get Pet Suppliers and Services",
      "image": "assets/images/onboard2.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: <Widget>[
                    //Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(height: defaultPadding * 4),
                    //Spacer(),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
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

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? KbtnRedColor : kTextredColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
