import 'package:flutter/material.dart';

import '../../../../constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);

  final String? text, image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding * 2),
      child: Column(
        children: <Widget>[
          //Spacer(),
          Text(
            "PET PLANET",
            style: TextStyle(
              fontSize: kHeadTextSize,
              color: kTextWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: kTextWhiteColor,
            ),
          ),
          SizedBox(height: defaultPadding * 2),
          Image.asset(
            image!,
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.height / 3,
          ),
        ],
      ),
    );
  }
}
