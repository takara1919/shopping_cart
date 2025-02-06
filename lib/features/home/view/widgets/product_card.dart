import 'package:flutter/material.dart';
import 'package:shopping_cart/config/utils/money_helper.dart';
import 'package:shopping_cart/core/color.dart';

import '../../../../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isHot;

  const ProductCard({
    super.key,
    required this.product,
    this.isHot = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.only(
        bottom: 2,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
              if (isHot)
                Positioned(
                  top: 8.0,
                  left: 8.0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Text('🔥'),
                  ),
                ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        MoneyHelper.formatToVND(product.price),
                        style: const TextStyle(
                          fontSize: 16,
                          color: ColorManager.orange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: IconButton(
                      icon: const Icon(Icons.add_shopping_cart, color: ColorManager.orange,),
                      onPressed: () {
                        // Show bottom sheet to add product to cart
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
