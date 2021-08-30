import 'package:ecommerce_app/constants/commerce_icons.dart';
import 'package:ecommerce_app/constants/product.dart';
import 'package:ecommerce_app/constants/theme.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  final Product product;
  ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 160.0,
          height: 214.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Image(
            image: AssetImage("assets/img/${widget.product.image}.png"),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          widget.product.title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: ThemeApp.cFont2,
            fontFamily: 'Lato',
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$ ${widget.product.price}.00",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: ThemeApp.cAccent,
                fontFamily: 'Lato',
              ),
            ),
            Icon(
              Commerce.heart,
              color: ThemeApp.cFont3,
            ),
          ],
        )
      ],
    );
  }
}
