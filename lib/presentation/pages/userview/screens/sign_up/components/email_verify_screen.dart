import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../shared/components/default_button.dart';
import 'complete_profile_screen.dart';

class EmailVerifyView extends StatefulWidget {
  const EmailVerifyView({Key? key}) : super(key: key);

  static String routeName = "email_verify_screen";
  @override
  State<EmailVerifyView> createState() => _EmailVerifyViewState();
}

class _EmailVerifyViewState extends State<EmailVerifyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Verification'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: defaultPadding * 0.2),
                Text(
                  "Email    Verification ",
                  style: headingStyle,
                ),
                Text(
                  "We send Verification Link to your Email, Verify it befor complete .....",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 2),
                DefaultButton(
                  text: "Verified & Complete",
                  press: () {
                    final currentUser = FirebaseAuth.instance.currentUser;
                    if (currentUser != null && currentUser.emailVerified) {
                      //Navigator.pushNamed(context, OtpScreen.routeName);
                      print(
                          "email verified"); //return const Text('email is verified ');
                    } else {
                      print("email need to verify ");
                      Navigator.pushNamed(
                          context, CompleteProfileScreen.routeName);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
