import 'package:flutter/material.dart';

import '../../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: KnavbarGrayColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        style: TextStyle(
          color: kTextWhiteColor,
        ),
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(defaultPadding),
            hintText: "Search product",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
