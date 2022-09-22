import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/model/model_single_product.dart';

Future<ModelSingleProduct> singleProductData(productId) async {
  var map = <String, dynamic>{};
  map['product_id'] = productId;

  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/product_single_page"),
      body: json.encode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      });

  if (response.statusCode == 200) {
    return ModelSingleProduct.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
