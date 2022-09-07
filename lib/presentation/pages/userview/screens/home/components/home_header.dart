import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(color: KnavbarGrayColor),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Image(
                image: AssetImage("assets/images/icon.png"),
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 5,
              ),
            ),
            Container(
              child: Text(
                "PET PLANET",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            // IconBtnWithCounter(svgSrc: "assets/icons/Cart Icon.svg", press: () {}
            //     //Navigator.pushNamed(context, ShoppingCartScreen.routeName),
            //     ),
            // IconBtnWithCounter(
            //   svgSrc: "assets/icons/Bell.svg",
            //   numOfitem: 3,
            //   press: () {},
            // ),
          ],
        ),
      ),
    );
  }
}

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding / 1.2),
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              color: KnavbarGrayColor,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 16,
                width: 15,
                decoration: BoxDecoration(
                  color: KbtnRedColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: KnavbarGrayColor),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: kHeadTextSize / 2,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: kTextWhiteColor,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
