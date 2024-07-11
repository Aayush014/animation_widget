import 'package:flutter/material.dart';

class AnimeList extends StatefulWidget {
  const AnimeList({super.key});

  @override
  State<AnimeList> createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItems() {
    _items.insert(0, "${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
          (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            color: Colors.red,
            margin: EdgeInsets.all(10),
            child: ListTile(

              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: _addItems,
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            )),
        Expanded(
          child: AnimatedList(
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                key: UniqueKey(),
                child: Card(
                  margin: const EdgeInsets.all(10),
                  color: Colors.orange,
                  child: ListTile(
                    title: Text(_items[index]),
                    trailing: IconButton(onPressed: () {
                      _removeItem(index);
                    }, icon: const Icon(Icons.delete)),
                  ),
                ),
              );
            },
            key: _key,
            initialItemCount: 0,
          ),
        ),
      ],
    );
  }
}