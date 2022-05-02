import 'package:flutter/material.dart';
import 'package:ttangkkeusmarket/screens/recommend.dart';
import 'package:ttangkkeusmarket/screens/newitem.dart';
import 'package:ttangkkeusmarket/screens/bestitem.dart';
import 'package:ttangkkeusmarket/screens/discount.dart';

class MainTabBar extends StatelessWidget {
  const MainTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(children: const [
          TabBar(
            indicatorColor: Color(0xff000000),
            indicatorWeight: 2.5,
            tabs: [
              Tab(
                child: Text(
                  "추천",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'NotoSans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  "신상품",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'NotoSans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  "베스트",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'NotoSans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  "할인",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'NotoSans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Expanded(
              child: TabBarView(children: [
            RecommendTab(),
            NewitemTab(),
            BestitemTab(),
            DiscountTab(),
          ]))
        ]),
      ),
    );
  }
}