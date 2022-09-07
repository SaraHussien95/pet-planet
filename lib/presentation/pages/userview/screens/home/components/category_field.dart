import 'package:flutter/material.dart';

import '../../../../constants.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Bill Icon.svg", "text": "Dog"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Cat"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Fish"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: Icons.pets_rounded.toString(), //categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        //width: 100,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(defaultPadding),
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                color: KnavbarGrayColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.pets_outlined,
                color: kTextWhiteColor,
              ), //SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
