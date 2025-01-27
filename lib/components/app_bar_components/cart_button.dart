import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fn_by_fn/constants/k_constant.dart';
import 'package:velocity_x/velocity_x.dart';

class CartButton extends StatelessWidget {
  final Function() onTap;
  const CartButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 35,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              right: 5,
              child: SvgPicture.asset("assets/icons/cart.svg", height: 27),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: StreamBuilder<int>(
                stream: kCartITemCountBlocInstance.cartItemsStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data != 0) {
                    return CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.black,
                      child: snapshot.data!.text.bold
                          .size(13)
                          .white
                          .makeCentered(),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
