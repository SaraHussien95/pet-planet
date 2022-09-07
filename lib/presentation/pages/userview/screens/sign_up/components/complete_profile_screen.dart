import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'complete_profile_form.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: defaultPadding),
                  Text("Complete Profile", style: headingStyle),
                  Text(
                    "Complete your details or continue  \nwith social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: defaultPadding * 3),
                  CompleteProfileForm(),
                  SizedBox(height: defaultPadding * 3),
                  Text(
                    "By continuing your confirm that you agree \nwith our Term and Condition",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
