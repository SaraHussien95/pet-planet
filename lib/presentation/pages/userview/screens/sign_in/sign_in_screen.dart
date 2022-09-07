import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../sign_up/sign_up_screen.dart';
import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                SizedBox(height: defaultPadding * 0.3),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: kHeadTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //SizedBox(height: defaultPadding * 0.3),
                Text(
                  "Sign in with your email and password ", // \nor continue with social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: kHeadTextSize / 2,
                  ),
                ),
                SizedBox(height: defaultPadding * 2),
                SignInForm(),
                //SizedBox(height: double.infinity * 0.08),
                /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/google-icon.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/facebook-2.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: TextStyle(fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, SignUpScreen.routeName),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 17, color: kTextredColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
