// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EarningModel _$$_EarningModelFromJson(Map<String, dynamic> json) =>
    _$_EarningModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      earnings: (json['earnings'] as num?)?.toDouble(),
      withdrawal: (json['withdrawal'] as num?)?.toDouble(),
      refund: json['refund'] as String?,
    );

Map<String, dynamic> _$$_EarningModelToJson(_$_EarningModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'earnings': instance.earnings,
      'withdrawal': instance.withdrawal,
      'refund': instance.refund,
    };
