import 'package:flutter/material.dart';

import '../../../constants.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Cookie mint rkeherjekw kerjekt', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie cream', '\$5.99',
                      'assets/images/foodtype.jpg', true, false, context),
                  _buildCard('Cookie classic', '\$1.99',
                      'assets/images/foodtype.jpg', false, true, context),
                  _buildCard('Cookie choco', '\$2.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                  _buildCard('Cookie mint', '\$3.99',
                      'assets/images/foodtype.jpg', false, false, context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => CookieDetail(
          //         assetPath: imgPath, cookieprice: price, cookiename: name),
          //   ),
          // );
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: KnavbarGrayColor,
                  spreadRadius: 3.0,
                  blurRadius: 5.0,
                ),
              ],
              color: KnavbarGrayColor),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: KbtnRedColor,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: KbtnRedColor,
                          )
                  ],
                ),
                Hero(
                  tag: Text("data"),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(height: 7.0),
                Text(
                  price,
                  style: TextStyle(
                    color: KbtnRedColor,
                    fontSize: 14.0,
                  ),
                ),
                //SizedBox(height: 7.0),
                Text(
                  name,
                  style: TextStyle(color: kTextredColor, fontSize: 13.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
