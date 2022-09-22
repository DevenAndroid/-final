import 'package:get/get.dart';

class ModelProductCategories {
  List<Categories1>? categories;

  ModelProductCategories({this.categories});

  ModelProductCategories.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories1>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories1 {
  int? id;
  String? name;
  String? slug;
  RxBool selected = false.obs;

  Categories1({this.id, this.name, this.slug});

  Categories1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}
