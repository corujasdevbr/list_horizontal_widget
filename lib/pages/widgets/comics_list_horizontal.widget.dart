import 'dart:convert';

import 'package:exemplos_widget/models/item_list.model.dart';
import 'package:exemplos_widget/widgets/list_horizontal.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ComicsListHorizontal extends StatefulWidget {
  @override
  _ComicsListHorizontalState createState() => _ComicsListHorizontalState();
}

class _ComicsListHorizontalState extends State<ComicsListHorizontal> {
  List<ItemListModel> items = new List();

  @override
  void initState() {
    super.initState();
    loadJson();
  }

  Future<void> loadJson() async {
    String data = await rootBundle.loadString('assets/data/marvel_comics.json');
    var elements = await parseJson(data);
    setState(() {
      items = elements;
    });
  }

  printid(int id) {
    print('Comics id: $id');
  }

  Future<List<ItemListModel>> parseJson(String response) async {
    List<ItemListModel> lsItems = new List();
    print(response);
    final parsed = json.decode(response);
    for (var item in parsed['data']['results']) {
      lsItems.add(ItemListModel.fromJson(item));
    }

    return lsItems;
  }

  @override
  Widget build(BuildContext context) {
    return (items == null)
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListHorizontalWidget(
            items,
            'Comics',
            function: printid,
          );
  }
}
