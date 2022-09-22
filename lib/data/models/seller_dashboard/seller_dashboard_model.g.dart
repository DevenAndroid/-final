// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'seller_dashboard_model.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// _$_SellerDashboard _$$_SellerDashboardFromJson(Map<String, dynamic> json) =>
//     _$_SellerDashboard(
//       status: json['status'] as String?,
//       message: json['message'] as String?,
//       data: json['data'] == null
//           ? null
//           : DashboardData.fromJson(json['data'] as Map<String, dynamic>),
//     );
//
// Map<String, dynamic> _$$_SellerDashboardToJson(_$_SellerDashboard instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//       'data': instance.data,
//     };
//
// _$_DashboardData _$$_DashboardDataFromJson(Map<String, dynamic> json) =>
//     _$_DashboardData(
//       totalOrders: json['total_orders'] as int?,
//       pendingOrders: json['pending_orders'] as int?,
//       processingOrders: json['processing_orders'] as int?,
//       completedOrders: json['completed_orders'] as int?,
//       grossSales: json['gross_sales'] == null
//           ? null
//           : SalesModel.fromJson(json['gross_sales'] as Map<String, dynamic>),
//       earnings: json['earnings'] == null
//           ? null
//           : SalesModel.fromJson(json['earnings'] as Map<String, dynamic>),
//       withdraw: json['withdraw'] == null
//           ? null
//           : SalesModel.fromJson(json['withdraw'] as Map<String, dynamic>),
//     );
//
// Map<String, dynamic> _$$_DashboardDataToJson(_$_DashboardData instance) =>
//     <String, dynamic>{
//       'total_orders': instance.totalOrders,
//       'pending_orders': instance.pendingOrders,
//       'processing_orders': instance.processingOrders,
//       'completed_orders': instance.completedOrders,
//       'gross_sales': instance.grossSales,
//       'earnings': instance.earnings,
//       'withdraw': instance.withdraw,
//     };
//
// _$_SalesModel _$$_SalesModelFromJson(Map<String, dynamic> json) =>
//     _$_SalesModel(
//       lastMonth: (json['last_month'] as num?)?.toDouble(),
//       month: json['month'] as int?,
//       week: json['week'] as int?,
//     );
//
// Map<String, dynamic> _$$_SalesModelToJson(_$_SalesModel instance) =>
//     <String, dynamic>{
//       'last_month': instance.lastMonth,
//       'month': instance.month,
//       'week': instance.week,
//     };
