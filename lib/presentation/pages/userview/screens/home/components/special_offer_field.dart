import 'package:flutter/material.dart';

import '../../../../constants.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Row(
            children: [
              Text(
                " Shop by  Brand",
                style: TextStyle(
                  fontSize: kHeadTextSize / 1.8,
                  color: kTextWhiteColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/pet-food.jpg",
                category: "Blue Buffalo ",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/pet-food.jpg",
                category: "Mars Petcare",
                numOfBrands: 24,
                press: () {},
              ),
              //SizedBox(width: 20),
              SpecialOfferCard(
                image: "assets/images/pet-food.jpg",
                category: "WellPet",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/pet-food.jpg",
                category: "FreshPet",
                numOfBrands: 24,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 200,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: KnavbarGrayColor,
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     KbtnRedColor,
                    //     kTextWhiteColor,
                    //   ],
                    // ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: kTextWhiteColor),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: kHeadTextSize / 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Product")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
