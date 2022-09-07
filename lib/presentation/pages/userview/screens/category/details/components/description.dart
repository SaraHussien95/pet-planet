import 'package:flutter/material.dart';

import '../../../../../../../data/models/product.dart';
import '../../../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        " description                 descrption", //product?.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
