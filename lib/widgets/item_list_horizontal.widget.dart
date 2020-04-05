import 'package:exemplos_widget/models/item_list.model.dart';
import 'package:flutter/material.dart';

class ItemListHorizontalWidget extends StatelessWidget {
  final ItemListModel item;

  ItemListHorizontalWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
        height: 160,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(80, 255, 255, 255),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(
                      item.name,
                      style: TextStyle(
                          fontFamily: 'Google',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Hero(
                  tag: item.name,
                  child: Image(
                      alignment: Alignment.bottomRight,
                      height: 120,
                      width: 160,
                      image: NetworkImage(item.thumbnail.toString())),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
