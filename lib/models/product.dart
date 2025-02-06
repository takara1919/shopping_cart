import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final String image;
  final double price;

  const Product({
    this.id = 0,
    this.name = "",
    this.image = "",
    this.price = 0,
  });

  @override
  List<Object> get props => [id, name, image, price];
}