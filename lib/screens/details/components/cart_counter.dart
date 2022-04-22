import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          // TODO: understand padLef
          child: Text(numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6!),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  buildOutlinedButton({required IconData icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          // padding: MaterialStateProperty.geometryEdgeInsets.zero,
          // padding: ,
          padding: EdgeInsets.zero,
          shape: (RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          )),
        ),
        onPressed: () => press(),
        child: Icon(icon),
      ),
    );
  }
}
