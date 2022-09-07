import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static String routeName = "/dashboard";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
    );
  }
}
