import 'package:exemplos_widget/models/item_list.model.dart';
import 'package:exemplos_widget/widgets/item_list_horizontal.widget.dart';
import 'package:flutter/material.dart';

class ListHorizontalWidget extends StatelessWidget {
  final List<ItemListModel> items;
  final String title;
  final Function function;

  ListHorizontalWidget(this.items, this.title, {this.function});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 20.0),
      height: 220.0,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: InkWell(
              child: Text(
                title,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          new ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return new InkWell(
                child: ItemListHorizontalWidget(items[index]),
                onTap: () {
                  if (function != null) function(items[index].id);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
