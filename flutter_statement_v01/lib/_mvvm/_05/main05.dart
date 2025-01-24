import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/_mvvm/_05/product.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productProvider);
    ProductNotifier notifier = ref.read(productProvider.notifier);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "제품명을 입력하세요",
                      suffix: IconButton(
                        onPressed: () {
                          notifier.addProduct(_controller.text);
                          _controller.clear();
                        },
                        icon: Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
                ListTile(leading: Text('입고 여부', style: TextStyle(fontSize: 16),),title: Text('제품명',style: TextStyle(fontSize: 16),),trailing: Text('삭제하기',style: TextStyle(fontSize: 16),),),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => ListTile(
                      title: Text(
                        '${products[index].name} ${products[index].isAvaliable ? '' : '(품절)'}',
                        style: products[index].isAvaliable?TextStyle(decoration: TextDecoration.none):TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),
                      ),
                      leading: Checkbox(
                        value: products[index].isAvaliable,
                        onChanged: (value) {
                          notifier.toggleIsAvaliable(index);
                        },
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            notifier.removeProduct(index);
                          },
                          icon: Icon(Icons.remove_circle_outline,color: Colors.red,)),
                    ),
                    itemCount: products.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
