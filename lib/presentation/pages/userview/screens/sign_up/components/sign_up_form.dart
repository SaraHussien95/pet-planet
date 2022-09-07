import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../../../constants.dart';
import '../../../shared/components/error_form.dart';

import '../../../shared/components/custom_suffix_icon.dart';
import '../../../shared/components/default_button.dart';
import 'complete_profile_screen.dart';
import 'email_verify_screen.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: defaultPadding * 3),
          buildPasswordFormField(),
          SizedBox(height: defaultPadding * 3),
          buildConformPassFormField(),
          ErrorForm(errors: errors),
          SizedBox(height: defaultPadding * 3),
          DefaultButton(
            text: "Continue",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                try {
                  final UserCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: email.toString(),
                    password: password.toString(),
                  );
                  print(UserCredential);

                  final user = FirebaseAuth.instance.currentUser;
                  await user?.sendEmailVerification();
                  print("email verify send");
                  Navigator.pushNamed(context, EmailVerifyView.routeName);
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'email-already-in-use') {
                    addError(error: KEmailExist);
                  }
                }
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      style: TextStyle(
        color: kTextWhiteColor,
      ),
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
        removeError(error: kPassNullError);
        removeError(error: kMatchPassError);
        conform_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      style: TextStyle(
        color: kTextWhiteColor,
      ),
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        removeError(error: kPassNullError);
        removeError(error: kShortPassError);
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: TextStyle(
        color: kTextWhiteColor,
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        removeError(error: kEmailNullError);
        removeError(error: kInvalidEmailError);
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
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
    );
  }
}
