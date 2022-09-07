import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../../../app/util/keyboard_util.dart';
import '../../../../adminview/screens/dashboard.dart';
import '../../../../constants.dart';
import '../../../shared/components/custom_suffix_icon.dart';
import '../../../shared/components/default_button.dart';
import '../../../shared/components/error_form.dart';
import '../../home/home_screen.dart';
import 'forget_password_screen.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
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
          SizedBox(height: defaultPadding * 2),
          buildPasswordFormField(),
          SizedBox(height: defaultPadding / 2),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: KbtnRedColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          ErrorForm(errors: errors),
          SizedBox(height: defaultPadding * 2),
          DefaultButton(
            text: "Continue",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);

                try {
                  final UserCredential =
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email.toString(),
                    password: password.toString(),
                  );
                  if (email == "superadmin@gmail.com") {
                    Navigator.pushNamed(context, DashboardScreen.routeName);
                  } else {
                    print("you are logef in ");
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }
                } on FirebaseAuthException catch (e) {
                  print(e.code);
                  if (e.code == 'user-not-found') {
                    addError(error: kInvalidEmailError);
                  } else if (e.code == 'wrong-password') {
                    addError(error: kEmailNullError);
                  }
                }
              }
            },
          ),
        ],
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
        // labelStyle: ,
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
