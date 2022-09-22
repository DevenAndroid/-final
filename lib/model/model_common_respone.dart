class ModelCommonResponse {
  ModelCommonResponse({
    required this.status,
    required this.message,
  });
  late var status;
  late final String message;

  ModelCommonResponse.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    return _data;
  }
}