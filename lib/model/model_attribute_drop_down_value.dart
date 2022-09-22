
class ModelGetAttributeDropDownValue {
  bool? status;
  String? message;
  List<ModelAttributeData>? data;

  ModelGetAttributeDropDownValue({this.status, this.message, this.data});

  ModelGetAttributeDropDownValue.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ModelAttributeData>[];
      json['data'].forEach((v) {
        data!.add(ModelAttributeData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelAttributeData {
  String? title;
  String? titleSlug;
  String? keyName;
  bool? selected = false;
  List<Items>? items;

  ModelAttributeData({this.title, this.titleSlug, this.keyName, this.items,this.selected});

  ModelAttributeData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    titleSlug = json['title_slug'];
    keyName = json['key_name'];
    selected = json['selected'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['title_slug'] = titleSlug;
    data['key_name'] = keyName;
    data['selected'] = selected;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? termId;
  String? name;
  String? slug;
  int? termGroup;
  int? termTaxonomyId;
  String? taxonomy;
  String? description;
  int? parent;
  int? count;
  String? filter;
  bool isSelected = false;
  bool? isSelected1 = false;

  Items(
      {this.termId,
        this.name,
        this.slug,
        this.termGroup,
        this.termTaxonomyId,
        this.taxonomy,
        this.description,
        this.parent,
        this.count,
        this.filter,
        this.isSelected1,
        required this.isSelected});

  Items.fromJson(Map<String, dynamic> json) {
    termId = json['term_id'];
    name = json['name'];
    slug = json['slug'];
    termGroup = json['term_group'];
    termTaxonomyId = json['term_taxonomy_id'];
    taxonomy = json['taxonomy'];
    description = json['description'];
    parent = json['parent'];
    count = json['count'];
    filter = json['filter'];
    isSelected = json['is_selected'];
    isSelected1 = json['is_selected1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['term_id'] = termId;
    data['name'] = name;
    data['slug'] = slug;
    data['term_group'] = termGroup;
    data['term_taxonomy_id'] = termTaxonomyId;
    data['taxonomy'] = taxonomy;
    data['description'] = description;
    data['parent'] = parent;
    data['count'] = count;
    data['filter'] = filter;
    data['is_selected'] = isSelected;
    data['is_selected1'] = isSelected1;
    return data;
  }
}