import 'package:flutter/material.dart';

class ManitioningScrollview extends StatelessWidget {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GlobalKey Example')),
        body: AnimatedList(
          key: listKey,
          initialItemCount: items.length,
          itemBuilder: (context, index, animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: ListTile(
                title: Text(items[index]),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addItem();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void addItem() {
    final newIndex = items.length;
    items.add('Item ${newIndex + 1}');
    listKey.currentState?.insertItem(newIndex);
  }
}
