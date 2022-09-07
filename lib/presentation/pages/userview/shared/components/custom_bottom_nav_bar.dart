import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../screens/category/category_screen.dart';
import '../../screens/home/home_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: KnavbarGrayColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: MenuState.home == selectedMenu
                    ? KbtnRedColor
                    : kTextWhiteColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              // icon: SvgPicture.asset(
              //   "assets/icons/icons8-home.svg",
              //   color: MenuState.home == selectedMenu
              //       ? KbtnRedColor
              //       : inActiveIconColor,
              // ),
              // onPressed: () {}
              // //Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: Icon(
                Icons.search_outlined,
                color: MenuState.search == selectedMenu
                    ? KbtnRedColor
                    : kTextWhiteColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.menu_outlined,
                color: MenuState.category == selectedMenu
                    ? KbtnRedColor
                    : kTextWhiteColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, CategoryScreen.routeName);
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: MenuState.profile == selectedMenu
                      ? KbtnRedColor
                      : kTextWhiteColor,
                ),
                onPressed: () {}
                //Navigator.pushNamed(context, ProfileScreen.routeName),
                ),
          ],
        ),
      ),
    );
  }
}
