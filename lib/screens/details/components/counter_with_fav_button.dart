import 'package:code_along_online_shop/screens/details/components/cart_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CartCounter(),
      // TODO: notice how heart shape is created
      Container(
        padding: EdgeInsets.all(8),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: Color(0xFFFF6464),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset("assets/icons/heart.svg"),
      )
    ]);
  }
}
