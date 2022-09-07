import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../shared/components/custom_bottom_nav_bar.dart';
import 'components/dicount_field.dart';
import 'components/home_header.dart';
import 'components/products_gridview.dart';
import 'components/special_offer_field.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              HomeHeader(),
              SizedBox(height: defaultPadding),
              // DiscountView(),

              //SizedBox(height: defaultPadding * 5),
              //Categories(),
              // SizedBox(height: defaultPadding),
              // SpecialOffers(),
              // SizedBox(height: defaultPadding * 2),
              //ProductGridView(),
              //ProducPopularView(),
              //SizedBox(height: defaultPadding * 2),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
