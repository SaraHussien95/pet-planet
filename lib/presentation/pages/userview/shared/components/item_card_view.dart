import 'package:flutter/material.dart';

import '../../../../../data/models/product.dart';
import '../../../constants.dart';

class ItemCardView extends StatelessWidget {
  //final double width, aspectRetio;
  final Product product;

  const ItemCardView({
    Key? key,
    // this.width = 140,
    // this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: InkWell(
        onTap: () {},
        // => Navigator.pushNamed(
        //   context,
        //   ItemDetailScreen.routeName,
        //   arguments: ProductDetailsArguments(product: product),
        // ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: KnavbarGrayColor,
                spreadRadius: 3,
                //blurRadius: 5,
              )
            ],
            color: KnavbarGrayColor,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    product.isFavourite
                        ? Icon(Icons.favorite, color: KbtnRedColor)
                        : Icon(
                            Icons.favorite_border,
                            color: kTextWhiteColor,
                          )
                  ],
                ),
              ),
              Hero(
                tag: product.images[0],
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(product.images[0]),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              SizedBox(height: 7),
              Text(
                "\EGP ${product.price}",
                style: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 15,
                ),
              ),
              Text(
                product.title,
                style: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
