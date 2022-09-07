import 'package:flutter/material.dart';
import 'presentation/app_initalizefire.dart';

import 'presentation/pages/routes_page.dart';
import 'presentation/pages/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: appInitalizeScreen.routeName,
      routes: routes,
    );
  }
}
