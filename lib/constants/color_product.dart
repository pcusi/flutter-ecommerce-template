import 'package:flutter/material.dart' show Color;

class ColorProduct {
  int productId;
  List<ColorDetail> colors;
  List<SizeDetail> sizes;
  ColorProduct({this.productId = 0, required this.colors, required this.sizes});

  static List<ColorProduct> productsColor = [
    ColorProduct(
      productId: 1,
      colors: [
        ColorDetail(index: 0, color: Color(0xFF3F2520)),
        ColorDetail(index: 1, color: Color(0xFF787A84)),
        ColorDetail(index: 2, color: Color(0xFFCB4A88)),
        ColorDetail(index: 3, color: Color(0xFFFFFFFF)),
      ],
      sizes: [
        SizeDetail(index: 0, size: 'XS'),
        SizeDetail(index: 1, size: 'S'),
        SizeDetail(index: 2, size: 'M'),
        SizeDetail(index: 3, size: 'L'),
        SizeDetail(index: 4, size: 'XL'),
      ]
    ),
  ];
}

class ColorDetail {
  final Color color;
  final int index;
  ColorDetail({required this.color, this.index = 0});
}

class SizeDetail {
  final String size;
  final int index;
  SizeDetail({required this.size, this.index = 0});
}
