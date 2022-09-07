import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../shared/components/custom_bottom_nav_bar.dart';
import 'product_list.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: productCatListView(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
