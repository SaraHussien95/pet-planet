import 'package:flutter/material.dart';

import '../../../../constants.dart';
/*
class ProductGridView extends StatelessWidget {
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
        //SizedBox(height: defaultPadding),
        Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 5,
              child: GridView.builder(
                itemCount: demoProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = demoProducts[index];
                  return GridTile(
                    child: ItemCardView(
                      product: item,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}*/


/*
class BuildList extends StatelessWidget {
  const BuildList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ;

    /*ListView.builder(
      itemCount: demoProducts.length,
      itemBuilder: (context, index) {
        final item = demoProducts[index];
        return ListTile(
          // leading: CircleAvatar(
          //   radius: 20,
          //   backgroundImage: NetworkImage(item.images[0]),
          // ),
          title: Text(item.title),
          textColor: kTextWhiteColor,
          subtitle: Text("\EGP ${item.price}"),
          onTap: () => selectItem(item.title),
        );
      },
    );*/
  }
}

void selectItem(String item) {
  final snackBar = SnackBar(
    content: Text(
      "selected $item",
      style: TextStyle(fontSize: 25, color: kTextWhiteColor),
    ),
    backgroundColor: kTextredColor,
  );

  // ScaffoldMessenger.of(context)
  //   ..removeCurrentSnackBar()
  //   ..showSnackBar(snackBar);
}
*/