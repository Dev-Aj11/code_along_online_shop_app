import 'package:code_along_online_shop/constants.dart';
import 'package:code_along_online_shop/screens/details/components/add_to_cart.dart';
import 'package:code_along_online_shop/screens/details/components/cart_counter.dart';
import 'package:code_along_online_shop/screens/details/components/color_and_size.dart';
import 'package:code_along_online_shop/screens/details/components/description.dart';
import 'package:code_along_online_shop/screens/details/components/product_title_with_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/product.dart';
import 'counter_with_fav_button.dart';

class Body extends StatelessWidget {
  final Product product;

  Body(this.product);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // TODO: understand why single childscrollview was needed
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                // height: 500,
                // TODO: Notice how smartly gaved fixed dimensions to the box
                // but constrained it with a dynamic property
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPaddin / 2),
                    Description(product: product),
                    SizedBox(height: kDefaultPaddin / 2),
                    CounterWithFavButton(),
                    SizedBox(height: kDefaultPaddin / 2),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithWidget(product: product),
            ]),
          )
        ],
      ),
    );
  }
}
