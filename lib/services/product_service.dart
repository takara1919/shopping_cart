import '../models/product.dart';

class ProductService {
  static const waitingTime = Duration(seconds: 2);

  Future callApi() async {
    await Future.delayed(waitingTime);
  }

  Future<List<Product>> getProducts({
    int page = 1,
    int pageSize = 10,
  }) async {
    return await callApi().then(
      (_) {
        return List.generate(
          pageSize,
          (index) {
            return Product(
              id: page + index,
              name: 'Product $index',
              image: 'assets/images/product_$index.png',
              price: index.toDouble() * 10000,
            );
          },
        );
      },
    );
  }

  Future<List<Product>> getHotProducts() async {
    return await callApi().then(
      (_) {
        return List.generate(
          10,
          (index) {
            return Product(
              id: index,
              name: 'Hot Product $index',
              image: 'assets/images/product_$index.png',
              price: 100 + index.toDouble() * 10000,
            );
          },
        )..shuffle();
      },
    );
  }
}
