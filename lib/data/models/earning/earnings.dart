import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings.freezed.dart';
part 'earnings.g.dart';

@freezed
class EarningModel with _$EarningModel {
  const factory EarningModel({
    String? status,
    String? message,
    double? earnings,
    double? withdrawal,
    String? refund,
  }) = _EarningModel;

  factory EarningModel.fromJson(Map<String, dynamic> json) =>
      _$EarningModelFromJson(json);
}
