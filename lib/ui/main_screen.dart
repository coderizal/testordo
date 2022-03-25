

import 'package:flutter/material.dart';
import 'package:testordo/ui/home_page.dart';

class MainPage extends StatefulWidget {
  final int initialPage;

  MainPage({this.initialPage = 0});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  bool islogin = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavbar() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 20,
              child: Image.asset("assets/vector.png")),
               Container(
              width: 20,
              child: Image.asset("assets/vector1.png")),
               Container(
              width: 20,
              child: Image.asset("assets/vector2.png")),
               Container(
              width: 20,
              child: Image.asset("assets/vector3.png")),
               Container(
              width: 20,
              child: Image.asset("assets/vector4.png"))
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return HomePage();
        case 2:
          return HomePage();
        case 3:
          return HomePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: Color(0xff566778),
      body: body(),
      bottomNavigationBar: customBottomNavbar(),
    );
  }
}
