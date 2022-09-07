import 'package:flutter/material.dart';

import 'adminview/screens/dashboard.dart';
import 'userview/screens/category/category_screen.dart';
import 'userview/screens/home/home_screen.dart';
import 'userview/screens/sign_in/components/forget_password_screen.dart';
import 'userview/screens/sign_in/components/log_in_success_screen.dart';
import 'userview/screens/sign_in/sign_in_screen.dart';
import 'userview/screens/sign_up/components/complete_profile_screen.dart';
import 'userview/screens/sign_up/components/email_verify_screen.dart';
import 'userview/screens/sign_up/components/otp_screen.dart';
import 'userview/screens/sign_up/sign_up_screen.dart';
import 'userview/screens/splash/splah_screen.dart';

import '../app_initalizefire.dart';

final Map<String, WidgetBuilder> routes = {
  //User View Routes
  appInitalizeScreen.routeName: (context) => appInitalizeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  EmailVerifyView.routeName: (context) => EmailVerifyView(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  // ItemDetailScreen.routeName: (context) => ItemDetailScreen(),
  // ShoppingCartScreen.routeName: (context) => ShoppingCartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),

  //Admin View Routes

  DashboardScreen.routeName: (context) => DashboardScreen(),
};
