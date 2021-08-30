
import 'package:ecommerce_app/components/main_component.dart';
import 'package:ecommerce_app/components/widgets/bottom_navigation_item_widget.dart';
import 'package:ecommerce_app/constants/commerce_icons.dart';
import 'package:ecommerce_app/constants/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: SingleChildScrollView(
                child: SafeArea(
                  child: MainComponent(),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: BottomNavigationItemWidget(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ThemeApp.cAccent,
          child: Icon(Commerce.gift),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
