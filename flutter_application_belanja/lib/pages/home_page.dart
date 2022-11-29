import 'package:flutter/material.dart';
import 'package:flutter_application_belanja/models/item.dart';
import '../widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'Fresh Cilantro', price: 5000, code: 'BRCH1'),
    Item(name: 'Fresh Mustard Greens', price: 2000, code: 'BRCH2'),
    Item(name: 'Yellow Onions', price: 6000, code: 'BRCH3'),
    Item(name: 'Fresh Kale Greens', price: 10000, code: 'BRCH4')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grocery Mall"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: MyListView(
            items: items,
            page: '/item',
          ),
        ));
  }
}
