import 'package:exemplos_widget/models/thumbnail.model.dart';

class ItemListModel {
  int id;
  String name;
  ThumbnailModel thumbnail;

  ItemListModel({
    this.id,
    this.name,
    this.thumbnail,
  });

  ItemListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    thumbnail = json['thumbnail'] != null
        ? new ThumbnailModel.fromJson(json['thumbnail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> model = new Map<String, dynamic>();
    model['id'] = this.id;
    model['name'] = this.name;
    if (this.thumbnail != null) {
      model['thumbnail'] = this.thumbnail.toJson();
    }
    return model;
  }
}
