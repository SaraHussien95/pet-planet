import 'package:flutter/material.dart';

import '../../../../constants.dart';

class DiscountView extends StatelessWidget {
  const DiscountView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(defaultPadding),
      padding: EdgeInsets.all(defaultPadding * 2),
      decoration: BoxDecoration(
        color: KnavbarGrayColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: kTextWhiteColor),
          children: [
            TextSpan(text: "A Summer Surpise\n"),
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: kHeadTextSize / 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
