import 'package:flutter/material.dart';

import '../../../shared/components/default_button.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/log_in_success_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Column(
        children: [
          SizedBox(height: double.infinity * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: double.infinity * 0.4, //40%
          ),
          SizedBox(height: double.infinity * 0.08),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity * 0.6,
            child: DefaultButton(
              text: "Go to home",
              press: () {
                //Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
