import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final bool isAvaliable;
  final String name;

  Product({this.isAvaliable = true, required this.name});

  // copyWith 추가하기
  Product copyWith({bool? isAvaliable, String? name}) {
    return Product(
        isAvaliable: isAvaliable ?? this.isAvaliable, name: name ?? this.name);
  }
}

// 창고 만들기
class ProductNotifier extends Notifier<List<Product>> {
  @override
  List<Product> build() {
    // 초기값 설정
    return [];
  }

  // addProduct
  addProduct(String name) {
    state = [...state, Product(name: name)];
  }

  //toggleIsAvaliable
  toggleIsAvaliable(int index) {
    int i = 0;
    state = state
        .map(
          (e) => i++ == index ? e.copyWith(isAvaliable: !e.isAvaliable) : e,
        )
        .toList();
  }

  // removeProduct
  removeProduct(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i != index) state[i]
    ];
  }
}

// 창고 관리자
final productProvider =
    NotifierProvider<ProductNotifier, List<Product>>(() => ProductNotifier());
