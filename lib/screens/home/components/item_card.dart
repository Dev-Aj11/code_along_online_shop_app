import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

// TODO: Notice what's encapsulated in the model vs how the widget is rendered
// image details, etc are all stored in model
class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  ItemCard({required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO; Why expanded here? how is it helping?
          // Notice we removed fixed height & width
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  // TODO: notice animation
                  Hero(child: Image.asset(product.image), tag: "${product.id}"),
            ),
          ),
          Padding(
            // TODO: see how efficient it is to have kDefaultPadding Value stored in constants.dart
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
