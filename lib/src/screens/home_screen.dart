import 'package:flutter/material.dart';
import 'package:ttangkkeusmarket/src/widgets/appbar.dart';
import 'package:ttangkkeusmarket/src/widgets/tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: const MyBottomNavBar(),
        appBar: BaseAppBar(appBar: AppBar(), title: "λλλ§μΌ", center: true),
        body: const MainTabBar());
  }
}
