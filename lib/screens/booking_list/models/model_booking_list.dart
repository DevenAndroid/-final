class ModelBookingList {
  bool? status;
  String? message;
  List<Data>? data;

  ModelBookingList({this.status, this.message, this.data});

  ModelBookingList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
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

class Data {
  int? bookingId;
  int? order_id;
  String? allDay;
  String? customer;
  String? start;
  String? end;
  String? product;
  String? status;
  String? cost;
  List<PersonCounts>? personCounts;

  Data(
      {
        this.bookingId,
        this.order_id,
        this.allDay,
        this.customer,
        this.start,
        this.end,
        this.product,
        this.status,
        this.cost,
        this.personCounts});

  Data.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    order_id = json['order_id'];
    allDay = json['all_day'];
    customer = json['customer'];
    start = json['start'];
    end = json['end'];
    product = json['product'];
    status = json['status'];
    cost = json['cost'];
    if (json['person_counts'] != null) {
      personCounts = <PersonCounts>[];
      json['person_counts'].forEach((v) {
        personCounts!.add(PersonCounts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['booking_id'] = bookingId;
    data['order_id'] = order_id;
    data['all_day'] = allDay;
    data['customer'] = customer;
    data['start'] = start;
    data['end'] = end;
    data['product'] = product;
    data['status'] = status;
    data['cost'] = cost;
    if (personCounts != null) {
      data['person_counts'] =
          personCounts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PersonCounts {
  String? title;
  int? value;

  PersonCounts({this.title, this.value});

  PersonCounts.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['value'] = value;
    return data;
  }
}
