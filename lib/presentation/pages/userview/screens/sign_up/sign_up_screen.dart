import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: defaultPadding), // 4%
                  Text("Register Account", style: headingStyle),
                  /*Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),*/
                  SizedBox(height: defaultPadding * 3),
                  SignUpForm(),
                  /*SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),*/
                  SizedBox(height: defaultPadding * 2),
                  Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kTextWhiteColor),
                    //style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
