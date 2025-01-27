import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/product_components/add_to_cart_button.dart';
import 'package:fn_by_fn/components/product_components/added_in_cart_button.dart';
import 'package:fn_by_fn/components/product_components/get_notify_button.dart';
import 'package:fn_by_fn/constants/k_constant.dart';
import 'package:fn_by_fn/data/cart_items_data.dart';
import 'package:fn_by_fn/model/product_model.dart';
import 'package:velocity_x/velocity_x.dart';

class ActionButton extends StatefulWidget {
  final ProductModel productData;
  final double height;

  const ActionButton({super.key, required this.productData, this.height = 45});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  addProductToCart() {
    setState(() {
      cartItemsData.add(widget.productData);
      kCartITemCountBlocInstance.cartItemsSink.add(cartItemsData.length);
    });
  }

  removeProductFromCart() {
    setState(() {
      cartItemsData.remove(widget.productData);
      kCartITemCountBlocInstance.cartItemsSink.add(cartItemsData.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.productData.isAvailable,
      replacement: GetNotifyButton(
        height: widget.height,
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: "You'll be notified when product is available".text.make(),
          ),
        ),
      ), // if not available show [notify button]
      child: Visibility(
        // else check this
        visible: !cartItemsData.contains(widget.productData),
        replacement: AddedInCartButton(
          height: widget.height,
          // if cart doesn't contains this item show [Added In Cart Button]
          onAdd: addProductToCart,
          onRemove: removeProductFromCart,
          quantity: cartItemsData.where((cartItem) => widget.productData.id == cartItem.id).length,
        ),
        child: AddToCartButton(
          height: widget.height,
          onTap: addProductToCart,
        ), // else show [add to cart button]
      ),
    );
  }
}
