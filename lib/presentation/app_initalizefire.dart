import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../firebase_options.dart';
import 'pages/userview/screens/splash/splah_screen.dart';

class appInitalizeScreen extends StatelessWidget {
  const appInitalizeScreen({Key? key}) : super(key: key);
  static String routeName = "/app_initalizefire";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            print("connection done to my firebase");
            return SplashScreen();
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
