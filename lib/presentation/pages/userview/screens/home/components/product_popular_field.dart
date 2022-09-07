import 'package:flutter/material.dart';

import '../../../../constants.dart';
/*
class ProducPopularView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Row(
            children: [
              Text(
                "Popular Peoduct",
                style: TextStyle(
                  fontSize: kHeadTextSize / 1.8,
                  color: kTextWhiteColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ItemCardView(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: defaultPadding * 2),
            ],
          ),
        )
      ],
    );
  }
}
*/