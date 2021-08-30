import 'package:ecommerce_app/constants/commerce_icons.dart';
import 'package:ecommerce_app/constants/theme.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_widget.dart';

class BottomNavigationItemWidget extends StatefulWidget {
  BottomNavigationItemWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationItemWidgetState createState() =>
      _BottomNavigationItemWidgetState();
}

class _BottomNavigationItemWidgetState
    extends State<BottomNavigationItemWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 100.0,
      child: Stack(
        children: [
          BottomNavigationWidget(),
          Container(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Commerce.home,
                  color: ThemeApp.cAccent,
                ),
                Icon(
                  Commerce.cart,
                  color: ThemeApp.cFont3,
                ),
                SizedBox.shrink(),
                Icon(
                  Commerce.heart,
                  color: ThemeApp.cFont3,
                ),
                Icon(
                  Commerce.user,
                  color: ThemeApp.cFont3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
