import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AddedInCartButton extends StatelessWidget {
  final VoidCallback onAdd, onRemove;
  final double height;
  final int quantity;
  const AddedInCartButton({
    super.key,
    required this.onAdd,
    required this.onRemove,
    required this.quantity,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: onRemove, icon: Icon(Icons.remove, size: 22)),
          quantity.text.bold.bodyLarge(context).size(18).black.make(),
          IconButton(onPressed: onAdd, icon: Icon(Icons.add, size: 22)),
        ],
      ),
    ).height(height).white.border(color: kSecondaryColor).rounded.make();
  }
}
