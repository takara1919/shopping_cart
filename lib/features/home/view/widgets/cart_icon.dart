import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return BlocBuilder<CartBloc, CartState>(
  //     builder: (context, state) {
  //       return Stack(
  //         children: [
  //           IconButton(
  //             icon: const Icon(Icons.shopping_cart),
  //             onPressed: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => CartScreen()),
  //               );
  //             },
  //           ),
  //           if (state is CartUpdated && state.cartItems.isNotEmpty)
  //             Positioned(
  //               right: 8,
  //               top: 8,
  //               child: CircleAvatar(
  //                 radius: 10,
  //                 backgroundColor: Colors.red,
  //                 child: Text(
  //                   state.cartItems.length.toString(),
  //                   style: TextStyle(color: Colors.white, fontSize: 12),
  //                 ),
  //               ),
  //             ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.shopping_cart_outlined,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
