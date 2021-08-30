import 'package:ecommerce_app/components/detail_component.dart';
import 'package:ecommerce_app/components/widgets/brand_widget.dart';
import 'package:ecommerce_app/components/widgets/product_widget.dart';
import 'package:ecommerce_app/constants/brand.dart';
import 'package:ecommerce_app/constants/commerce_icons.dart';
import 'package:ecommerce_app/constants/product.dart';
import 'package:ecommerce_app/constants/theme.dart';
import 'package:flutter/material.dart';

class MainComponent extends StatefulWidget {
  const MainComponent({Key? key}) : super(key: key);

  @override
  _MainComponentState createState() => _MainComponentState();
}

class _MainComponentState extends State<MainComponent> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: ThemeApp.cWhite,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: 60.0,
            margin: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 32.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  width: size.width * .75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: ThemeApp.cFont4.withOpacity(.1),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Commerce.search,
                        color: ThemeApp.cFont3,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Buscar',
                        style: TextStyle(
                          color: ThemeApp.cFont3,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Commerce.bell,
                  color: ThemeApp.cFont3,
                )
              ],
            ),
          ),
          SizedBox(
            height: 36.0,
          ),
          //Container shop fast and secure
          Container(
            width: size.width,
            height: 140.0,
            margin: const EdgeInsets.symmetric(horizontal: 32.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: ThemeApp.cAccent.withOpacity(.05),
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 146.0,
                  height: 125.0,
                  child: Image(
                    image: AssetImage('assets/img/empty_cart.png'),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Compra ',
                      style: TextStyle(
                        color: ThemeApp.cAccent,
                        fontSize: 24.0,
                        fontFamily: 'Lato',
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'rápido',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' y de forma',
                        ),
                        TextSpan(
                          text: ' segura',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 36.0,
          ),
          //brand list horizontal
          Container(
            width: size.width,
            height: 35.0,
            margin: const EdgeInsets.only(left: 32.0),
            child: ListView.builder(
              itemCount: BrandCategory.brands.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final brands = BrandCategory.brands;
                return Container(
                  child: selectedIndex == index
                      ? Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                              decoration: BoxDecoration(
                                color: ThemeApp.cAccent,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: BrandWidget(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                name: brands[index].name,
                                textColor: ThemeApp.cWhite,
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: BrandWidget(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                name: brands[index].name,
                                textColor: ThemeApp.cFont2,
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            )
                          ],
                        ),
                );
              },
            ),
          ),
          //product grid list
          Container(
            width: size.width,
            height: 400.0,
            margin: const EdgeInsets.all(32.0),
            child: GridView.builder(
                itemCount: Product.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: (size.width / 3.3) / (size.height / 4),
                ),
                itemBuilder: (_, index) {
                  final product = Product.products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => DetailComponent(product: product,)));
                    },
                    child: Container(
                      child: ProductWidget(
                        product: product,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
