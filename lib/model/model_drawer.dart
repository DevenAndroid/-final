class ModelDrawer {
  bool? status;
  String? message;
  List<MenuList>? menuList;

  ModelDrawer({this.status, this.message, this.menuList});

  ModelDrawer.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['menu_list'] != null) {
      menuList = <MenuList>[];
      json['menu_list'].forEach((v) {
        menuList!.add(MenuList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (menuList != null) {
      data['menu_list'] = menuList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MenuList {
  String? title;
  String? url;
  String? iconUrl;

  MenuList({this.title, this.url, this.iconUrl});

  MenuList.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    iconUrl = json['icon_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['url'] = url;
    data['icon_url'] = iconUrl;
    return data;
  }
}
