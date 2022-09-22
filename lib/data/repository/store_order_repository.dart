import 'package:dinelah_vendor/data/models/order/order.dart';
import 'package:dinelah_vendor/data/local/auth_db.dart';
import 'package:dinelah_vendor/data/remote/api_service.dart';

import '../../constraints/api_endpoints.dart';
import 'package:dio/dio.dart' as dio;

import '../models/order/order_details.dart';

class StoreOrderRepository {
  final _dio = dio.Dio();

  Future<List<StoreOrder>> getStoreOrders(
    int pageNo,
    int perPage,
    String timeStatus,
      {String? filterBy,}) async {
    print("timeStatus>>>>>>>>>>>>>>>>>>$timeStatus");

    final response = await ApiService.post(storeOrderListApi, _dio, body: {
      "cookie": AuthDb.getAuthCookie()?.cookie,
      "per_page": perPage,
      "page_no": pageNo,
      "order_status": filterBy,
      "time_status" : timeStatus,
    },);
    print("getStoreOrders response>>>>>>>>>>>>>>>>>>${response}");
    List<dynamic> products = response["orders"] ?? [];
    print("getStoreOrders response>>>>>>>>>>>>>>>>>>${products}");

    return products.map((data) => StoreOrder.fromJson(data)).toList();
  }

  Future<StoreOrderDetail> getOrderDetailsById(int? id) async {
    final response = await ApiService.post(storeOrderDetailsApi, _dio, body: {
      "cookie": AuthDb.getAuthCookie()?.cookie,
      "order_id": "$id",
    });
    try {
      print("Response >>>> $response");
      dynamic result = response['response'];
      return StoreOrderDetail.fromJson(result);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<dynamic> getOrderStateTypes() async {
    final response = await ApiService.post(orderStatusTypeApi, _dio, body: {
      "cookie": AuthDb.getAuthCookie()?.cookie,
    });

// {
//     "status": "success",
//     "message": "All Order Status",
//     "response": {
//         "wc-pending": "Pending payment",
//         "wc-processing": "Processing",
//         "wc-exchange": "Exchange",
//         "wc-on-hold": "On hold",
//         "wc-completed": "Completed",
//         "wc-cancelled": "Cancelled",
//         "wc-refunded": "Refunded",
//         "wc-failed": "Failed"
//     }
// }
    return response;
  }

  Future<dynamic> updateOrderStateById(int? id, String? status) async {
    final response = await ApiService.post(
      storeOrderStateUpdateApi,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
        "order_id": "$id",
        "order_status": status
      },
    );

    try {
      bool result = response['status'] == "success";
      return result == true
          ? Future.value(response['message'])
          : Future.error("${response['message']}");
    } catch (e) {
      return Future.error(e.toString().substring(0,200));
    }
  }
}
