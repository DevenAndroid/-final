class ModelSingleProduct {
  ProductData? productData;
  String? status;
  String? message;

  ModelSingleProduct({this.productData, this.status, this.message});

  ModelSingleProduct.fromJson(Map<String, dynamic> json) {
    productData = json['product_data'] != null
        ? ProductData.fromJson(json['product_data'])
        : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (productData != null) {
      data['product_data'] = productData!.toJson();
    }
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class ProductData {
  int? id;
  String? name;
  String? price;
  String? sWcBookingDurationType;
  String? sWcBookingMinDuration;
  dynamic stock_quantity;
  String? sWcBookingMaxDuration;
  dynamic bWcBookingUserCanCancel;
  String? sWcBookingDuration;
  String? sWcBookingDurationUnit;
  String? sWcBookingQty;
  String? sWcBookingMinDate;
  String? sWcBookingMinDateUnit;
  String? sWcBookingMaxDate;
  String? sWcBookingMaxDateUnit;
  String? sWcBookingMaxPersonsGroup;
  dynamic bWcBookingHasPersonTypes;
  dynamic bWcBookingPersonCostMultiplier;
  dynamic bWcBookingPersonQtyMultiplier;
  String? sWcBookingMinPersonsGroup;
  dynamic bWcBookingHasPersons;
  String? sWcBookingCost;
  String? sWcBookingBlockCost;
  String? sWcDisplayCost;
  dynamic bWcBookingHasResources;
  String? wcBookingResourceLabel;
  String? sWcBookingResourcesAssignment;
  List<PersonData>? personData;
  List<ResourceData>? resourceData;
  List<Categories>? categories;

  ProductData(
      {this.id,
        this.name,
        this.sWcBookingDurationType,
        this.sWcBookingMinDuration,
        this.sWcBookingMaxDuration,
        this.bWcBookingUserCanCancel,
        this.sWcBookingDuration,
        this.sWcBookingDurationUnit,
        this.sWcBookingQty,
        this.sWcBookingMinDate,
        this.sWcBookingMinDateUnit,
        this.sWcBookingMaxDate,
        this.sWcBookingMaxDateUnit,
        this.sWcBookingMaxPersonsGroup,
        this.bWcBookingHasPersonTypes,
        this.bWcBookingPersonCostMultiplier,
        this.bWcBookingPersonQtyMultiplier,
        this.sWcBookingMinPersonsGroup,
        this.bWcBookingHasPersons,
        this.sWcBookingCost,
        this.sWcBookingBlockCost,
        this.sWcDisplayCost,
        this.bWcBookingHasResources,
        this.wcBookingResourceLabel,
        this.sWcBookingResourcesAssignment,
        this.personData,
        this.stock_quantity,
        this.price,
        this.resourceData});

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    sWcBookingDurationType = json['_wc_booking_duration_type'];
    stock_quantity = json['stock_quantity'];
    sWcBookingMinDuration = json['_wc_booking_min_duration'];
    sWcBookingMaxDuration = json['_wc_booking_max_duration'];
    bWcBookingUserCanCancel = json['_wc_booking_user_can_cancel'];
    sWcBookingDuration = json['_wc_booking_duration'];
    sWcBookingDurationUnit = json['_wc_booking_duration_unit'];
    sWcBookingQty = json['_wc_booking_qty'];
    sWcBookingMinDate = json['_wc_booking_min_date'];
    sWcBookingMinDateUnit = json['_wc_booking_min_date_unit'];
    sWcBookingMaxDate = json['_wc_booking_max_date'];
    sWcBookingMaxDateUnit = json['_wc_booking_max_date_unit'];
    sWcBookingMaxPersonsGroup = json['_wc_booking_max_persons_group'];
    bWcBookingHasPersonTypes = json['_wc_booking_has_person_types'];
    bWcBookingPersonCostMultiplier = json['_wc_booking_person_cost_multiplier'];
    bWcBookingPersonQtyMultiplier = json['_wc_booking_person_qty_multiplier'];
    sWcBookingMinPersonsGroup = json['_wc_booking_min_persons_group'];
    bWcBookingHasPersons = json['_wc_booking_has_persons'];
    sWcBookingCost = json['_wc_booking_cost'];
    sWcBookingBlockCost = json['_wc_booking_block_cost'];
    sWcDisplayCost = json['_wc_display_cost'];
    bWcBookingHasResources = json['_wc_booking_has_resources'];
    wcBookingResourceLabel = json['wc_booking_resource_label'];
    sWcBookingResourcesAssignment = json['_wc_booking_resources_assignment'];
    if (json['person_data'] != null) {
      personData = <PersonData>[];
      json['person_data'].forEach((v) {
        personData!.add(PersonData.fromJson(v));
      });
    }
    if (json['resource_data'] != null) {
      resourceData = <ResourceData>[];
      json['resource_data'].forEach((v) {
        resourceData!.add(ResourceData.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['_wc_booking_duration_type'] = sWcBookingDurationType;
    data['_wc_booking_min_duration'] = sWcBookingMinDuration;
    data['stock_quantity'] = stock_quantity;
    data['_wc_booking_max_duration'] = sWcBookingMaxDuration;
    data['_wc_booking_user_can_cancel'] = bWcBookingUserCanCancel;
    data['_wc_booking_duration'] = sWcBookingDuration;
    data['_wc_booking_duration_unit'] = sWcBookingDurationUnit;
    data['_wc_booking_qty'] = sWcBookingQty;
    data['_wc_booking_min_date'] = sWcBookingMinDate;
    data['_wc_booking_min_date_unit'] = sWcBookingMinDateUnit;
    data['_wc_booking_max_date'] = sWcBookingMaxDate;
    data['_wc_booking_max_date_unit'] = sWcBookingMaxDateUnit;
    data['_wc_booking_max_persons_group'] = sWcBookingMaxPersonsGroup;
    data['_wc_booking_has_person_types'] = bWcBookingHasPersonTypes;
    data['_wc_booking_person_cost_multiplier'] =
        bWcBookingPersonCostMultiplier;
    data['_wc_booking_person_qty_multiplier'] =
        bWcBookingPersonQtyMultiplier;
    data['_wc_booking_min_persons_group'] = sWcBookingMinPersonsGroup;
    data['_wc_booking_has_persons'] = bWcBookingHasPersons;
    data['_wc_booking_cost'] = sWcBookingCost;
    data['_wc_booking_block_cost'] = sWcBookingBlockCost;
    data['_wc_display_cost'] = sWcDisplayCost;
    data['_wc_booking_has_resources'] = bWcBookingHasResources;
    data['wc_booking_resource_label'] = wcBookingResourceLabel;
    data['_wc_booking_resources_assignment'] =
        sWcBookingResourcesAssignment;
    if (personData != null) {
      data['person_data'] = personData!.map((v) => v.toJson()).toList();
    }
    if (resourceData != null) {
      data['resource_data'] =
          resourceData!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PersonData {
  String? personType;
  String? description;
  String? baseCost;
  String? blockCost;
  String? min;
  String? max;

  PersonData(
      {this.personType,
        this.description,
        this.baseCost,
        this.blockCost,
        this.min,
        this.max});

  PersonData.fromJson(Map<String, dynamic> json) {
    personType = json['person_type'];
    description = json['description'];
    baseCost = json['base_cost'];
    blockCost = json['block_cost'];
    min = json['min'];
    max = json['max'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['person_type'] = personType;
    data['description'] = description;
    data['base_cost'] = baseCost;
    data['block_cost'] = blockCost;
    data['min'] = min;
    data['max'] = max;
    return data;
  }
}

class ResourceData {
  String? id;
  String? baseCosts;
  String? blockCosts;

  ResourceData({this.id, this.baseCosts, this.blockCosts});

  ResourceData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    baseCosts = json['base_costs'];
    blockCosts = json['block_costs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id!.replaceAll(RegExp('[A-Za-z]'), "").split('-')[0];
    data['base_costs'] = baseCosts;
    data['block_costs'] = blockCosts;
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  String? slug;

  Categories({this.id, this.name, this.slug});

  Categories.fromJson(Map<String, dynamic> json) {
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
