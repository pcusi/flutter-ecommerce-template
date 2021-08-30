import 'package:ecommerce_app/constants/color_product.dart';
import 'package:ecommerce_app/constants/commerce_icons.dart';
import 'package:ecommerce_app/constants/product.dart';
import 'package:ecommerce_app/constants/theme.dart';
import 'package:ecommerce_app/shared/icon_button.dart';
import 'package:ecommerce_app/shared/text.dart';
import 'package:flutter/material.dart';

class DetailComponent extends StatefulWidget {
  final Product product;
  DetailComponent({Key? key, required this.product}) : super(key: key);

  @override
  _DetailComponentState createState() => _DetailComponentState();
}

class _DetailComponentState extends State<DetailComponent> {
  int sizeIndex = 0;
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: size.width,
                height: size.height * .45,
                decoration: BoxDecoration(color: ThemeApp.cAccent),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/${widget.product.image}.png"),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: SafeArea(
                child: Container(
                  width: size.width,
                  padding: const EdgeInsets.all(
                    32.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconGlobalButton(
                        icon: Commerce.back,
                        color: ThemeApp.cWhite,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        size: 24.0,
                      ),
                      IconGlobalButton(
                        icon: Commerce.heart,
                        color: ThemeApp.cWhite,
                        onTap: () {},
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height * .62,
                padding: const EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  color: ThemeApp.cWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextGlobal(
                          value: widget.product.title,
                          color: ThemeApp.cFont3,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                        ),
                        TextGlobal(
                          value: "\$ ${widget.product.price}.00",
                          color: ThemeApp.cAccent,
                          fontSize: 24.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextGlobal(
                      value: widget.product.brand,
                      color: ThemeApp.cFont3,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    //stars rating
                    Row(
                      children: [
                        Icon(
                          Commerce.star,
                          color: ThemeApp.cFont3,
                        ),
                        SizedBox(width: 6.0),
                        Icon(
                          Commerce.star,
                          color: ThemeApp.cFont3,
                        ),
                        SizedBox(width: 6.0),
                        Icon(
                          Commerce.star,
                          color: ThemeApp.cFont3,
                        ),
                        SizedBox(width: 6.0),
                        Icon(
                          Commerce.star,
                          color: ThemeApp.cFont3,
                        ),
                        SizedBox(width: 6.0),
                        Icon(
                          Commerce.star_outline,
                          color: ThemeApp.cFont3,
                        ),
                        SizedBox(width: 6.0),
                        TextGlobal(
                          value: '4.1 | Reseñas',
                          color: ThemeApp.cFont3,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        )
                      ],
                    ),
                    //end stars rating
                    SizedBox(height: 16.0),
                    TextGlobal(
                      value: widget.product.description,
                      color: ThemeApp.cFont3,
                      fontSize: 16.0,
                      maxLines: 4,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 20.0),
                    TextGlobal(
                      value: 'Color',
                      color: ThemeApp.cFont3,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 12.0),
                    //clothes color
                    Container(
                      width: size.width,
                      height: 60.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: ColorProduct.productsColor.length,
                        itemBuilder: (_, index) {
                          final productsColor =
                              ColorProduct.productsColor[index];
                          if (widget.product.id == productsColor.productId) {
                            return Container(
                              width: size.width * .5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: productsColor.colors
                                    .map(
                                      (e) => Stack(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                colorIndex = e.index;
                                              });
                                            },
                                            child: Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: e.color,
                                                border: e.color ==
                                                        Color(0xFFFFFFFF)
                                                    ? Border.all(
                                                        width: 1.0,
                                                        color: ThemeApp.cFont3,
                                                      )
                                                    : Border.all(
                                                        color: Colors.transparent,
                                                      ),
                                              ),
                                            ),
                                          ),
                                          colorIndex == e.index ? Positioned(
                                            right: 0,
                                            child: Container(
                                              width: 16.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ThemeApp.cFont3,
                                                border: Border.all(
                                                  color: ThemeApp.cWhite,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Center(child: Icon(Commerce.check, size: 7.0, color: ThemeApp.cWhite,)),
                                            ),
                                          ) : Container(width: 16.0, height: 16.0,)
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ),
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextGlobal(
                      value: 'Talla',
                      color: ThemeApp.cFont3,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 12.0),
                    //clothes size
                    Container(
                      width: size.width,
                      height: 60.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: ColorProduct.productsColor.length,
                        itemBuilder: (_, index) {
                          final productsColor =
                              ColorProduct.productsColor[index];
                          if (widget.product.id == productsColor.productId) {
                            return Container(
                              width: size.width * .6,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: productsColor.sizes
                                    .map(
                                      (e) => GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            sizeIndex = e.index;
                                          });
                                        },
                                        child: Container(
                                          width: 44.0,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: sizeIndex == e.index
                                                  ? ThemeApp.cFont3
                                                  : ThemeApp.cGray1),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: TextGlobal(
                                              value: e.size,
                                              color: sizeIndex == e.index
                                                  ? ThemeApp.cWhite
                                                  : ThemeApp.cFont3,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                    //button shop
                    SizedBox(height: 18.0),
                    Container(
                      width: size.width,
                      height: 56.0,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            bottom: 0,
                            child: Container(
                              width: size.width,
                              height: 56.0,
                              decoration: BoxDecoration(
                                color: ThemeApp.cAccent,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: TextGlobal(
                                  value: 'Agregar al carrito',
                                  color: ThemeApp.cWhite,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
