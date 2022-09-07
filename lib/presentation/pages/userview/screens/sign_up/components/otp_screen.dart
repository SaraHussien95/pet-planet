import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../shared/components/default_button.dart';
import 'otp_form.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
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
                  "OTP Verification",
                  style: headingStyle,
                ),
                Text(
                    "We send Verification Link to your Email,\n/Verify it befor complete ....."),
                //buildTimer(),
                //OtpForm(),
                SizedBox(height: MediaQuery.of(context).size.height / 2),
                /*GestureDetector(
                  onTap: () {
                    // OTP code resend
                  },
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )*/
                DefaultButton(
                  text: "Continue",
                  press: () {
                    //Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kTextredColor),
          ),
        ),
      ],
    );
  }
}
