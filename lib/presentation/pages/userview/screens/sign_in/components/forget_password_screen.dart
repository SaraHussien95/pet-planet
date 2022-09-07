import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../shared/components/custom_suffix_icon.dart';
import '../../../shared/components/default_button.dart';
import '../../../shared/components/error_form.dart';
import '../../sign_up/sign_up_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: SafeArea(
        //width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                SizedBox(height: defaultPadding * 0.4),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 28,
                    color: kTextWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: defaultPadding * 0.5),
                Text(
                  "Please enter your email and we will send \nyou a link to reset your password",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: defaultPadding * 3),
                ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(
              color: kTextWhiteColor,
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: defaultPadding * 3),
          ErrorForm(errors: errors),
          SizedBox(height: defaultPadding * 3),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                // Do what you want to do
              }
            },
          ),
          SizedBox(height: defaultPadding * 0.1),
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
                  style: TextStyle(fontSize: 16, color: kTextredColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
