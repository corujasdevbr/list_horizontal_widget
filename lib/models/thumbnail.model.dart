class ThumbnailModel {
  String path;
  String extension;

  ThumbnailModel({this.path, this.extension});

  ThumbnailModel.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> model = new Map<String, dynamic>();
    model['path'] = this.path;
    model['extension'] = this.extension;
    return model;
  }

  @override
  String toString() {
    return '$path.$extension';
  }
}
