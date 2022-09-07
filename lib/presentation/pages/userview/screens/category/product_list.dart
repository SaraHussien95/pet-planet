import 'package:flutter/material.dart';
import 'package:petplanet/presentation/pages/constants.dart';
import 'cookiecart.dart';

class productCatListView extends StatefulWidget {
  @override
  _productCatListViewState createState() => _productCatListViewState();
}

class _productCatListViewState extends State<productCatListView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text(
            'Shop for your pet',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: kTextWhiteColor,
              labelColor: KbtnRedColor,
              isScrollable: true,
              //labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: kTextredColor,
              tabs: [
                Tab(
                  child: Text('Cookies',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 15,
                      )),
                ),
                Tab(
                  child: Text('Cookie cake',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 15,
                      )),
                ),
                Tab(
                  child: Text('Ice cream',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 15,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ]))
        ],
      ),
    );
  }
}
