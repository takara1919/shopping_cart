import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/core/color.dart';
import 'package:shopping_cart/features/home/view/widgets/cart_icon.dart';
import 'package:shopping_cart/features/home/view/widgets/home_body.dart';

import '../bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        centerTitle: true,
        backgroundColor: ColorManager.yellow,
        actions: const [
          CartIcon(),
        ],
      ),
      body: BlocProvider(
        create: (context) => HomeBloc()..add(const LoadProducts()),
        child: const HomeBody(),
      ),
    );
  }
}
