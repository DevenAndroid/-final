class SellerDashboard {
  String? status;
  String? message;
  Data? data;

  SellerDashboard({this.status, this.message, this.data});

  SellerDashboard.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<DashboardData>? dashboardData;
  int? pendingOrders;
  int? processingOrders;
  int? completedOrders;

  Data(
      {this.dashboardData,
        this.pendingOrders,
        this.processingOrders,
        this.completedOrders});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['dashboard_data'] != null) {
      dashboardData = <DashboardData>[];
      json['dashboard_data'].forEach((v) {
        dashboardData!.add(DashboardData.fromJson(v));
      });
    }
    pendingOrders = json['pending_orders'];
    processingOrders = json['processing_orders'];
    completedOrders = json['completed_orders'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dashboardData != null) {
      data['dashboard_data'] =
          dashboardData!.map((v) => v.toJson()).toList();
    }
    data['pending_orders'] = pendingOrders;
    data['processing_orders'] = processingOrders;
    data['completed_orders'] = completedOrders;
    return data;
  }
}

class DashboardData {
  String? title;
  dynamic today;
  dynamic month;
  dynamic total;

  DashboardData({this.title, this.today, this.month, this.total});

  DashboardData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    today = json['today'];
    month = json['month'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['today'] = today;
    data['month'] = month;
    data['total'] = total;
    return data;
  }
}
