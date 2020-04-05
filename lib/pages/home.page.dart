import 'package:exemplos_widget/models/item_list.model.dart';
import 'package:exemplos_widget/pages/widgets/characters_list_horizontal.widget.dart';
import 'package:exemplos_widget/pages/widgets/comics_list_horizontal.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemListModel> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Horizontal'),
        ),
        body: ListView(
          children: <Widget>[
            CharactersListHorizontal(),
            ComicsListHorizontal(),
          ],
        ));
  }
}
