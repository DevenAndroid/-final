// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target
//
// part of 'seller_dashboard_model.dart';
//
// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************
//
// T _$identity<T>(T value) => value;
//
// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');
//
// SellerDashboard _$SellerDashboardFromJson(Map<String, dynamic> json) {
//   return _SellerDashboard.fromJson(json);
// }
//
// /// @nodoc
// class _$SellerDashboardTearOff {
//   const _$SellerDashboardTearOff();
//
//   _SellerDashboard call(
//       {String? status, String? message, DashboardData? data}) {
//     return _SellerDashboard(
//       status: status,
//       message: message,
//       data: data,
//     );
//   }
//
//   SellerDashboard fromJson(Map<String, Object?> json) {
//     return SellerDashboard.fromJson(json);
//   }
// }
//
// /// @nodoc
// const $SellerDashboard = _$SellerDashboardTearOff();
//
// /// @nodoc
// mixin _$SellerDashboard {
//   String? get status => throw _privateConstructorUsedError;
//   String? get message => throw _privateConstructorUsedError;
//   DashboardData? get data => throw _privateConstructorUsedError;
//
//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $SellerDashboardCopyWith<SellerDashboard> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// /// @nodoc
// abstract class $SellerDashboardCopyWith<$Res> {
//   factory $SellerDashboardCopyWith(
//           SellerDashboard value, $Res Function(SellerDashboard) then) =
//       _$SellerDashboardCopyWithImpl<$Res>;
//   $Res call({String? status, String? message, DashboardData? data});
//
//   $DashboardDataCopyWith<$Res>? get data;
// }
//
// /// @nodoc
// class _$SellerDashboardCopyWithImpl<$Res>
//     implements $SellerDashboardCopyWith<$Res> {
//   _$SellerDashboardCopyWithImpl(this._value, this._then);
//
//   final SellerDashboard _value;
//   // ignore: unused_field
//   final $Res Function(SellerDashboard) _then;
//
//   @override
//   $Res call({
//     Object? status = freezed,
//     Object? message = freezed,
//     Object? data = freezed,
//   }) {
//     return _then(_value.copyWith(
//       status: status == freezed
//           ? _value.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as String?,
//       message: message == freezed
//           ? _value.message
//           : message // ignore: cast_nullable_to_non_nullable
//               as String?,
//       data: data == freezed
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as DashboardData?,
//     ));
//   }
//
//   @override
//   $DashboardDataCopyWith<$Res>? get data {
//     if (_value.data == null) {
//       return null;
//     }
//
//     return $DashboardDataCopyWith<$Res>(_value.data!, (value) {
//       return _then(_value.copyWith(data: value));
//     });
//   }
// }
//
// /// @nodoc
// abstract class _$SellerDashboardCopyWith<$Res>
//     implements $SellerDashboardCopyWith<$Res> {
//   factory _$SellerDashboardCopyWith(
//           _SellerDashboard value, $Res Function(_SellerDashboard) then) =
//       __$SellerDashboardCopyWithImpl<$Res>;
//   @override
//   $Res call({String? status, String? message, DashboardData? data});
//
//   @override
//   $DashboardDataCopyWith<$Res>? get data;
// }
//
// /// @nodoc
// class __$SellerDashboardCopyWithImpl<$Res>
//     extends _$SellerDashboardCopyWithImpl<$Res>
//     implements _$SellerDashboardCopyWith<$Res> {
//   __$SellerDashboardCopyWithImpl(
//       _SellerDashboard _value, $Res Function(_SellerDashboard) _then)
//       : super(_value, (v) => _then(v as _SellerDashboard));
//
//   @override
//   _SellerDashboard get _value => super._value as _SellerDashboard;
//
//   @override
//   $Res call({
//     Object? status = freezed,
//     Object? message = freezed,
//     Object? data = freezed,
//   }) {
//     return _then(_SellerDashboard(
//       status: status == freezed
//           ? _value.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as String?,
//       message: message == freezed
//           ? _value.message
//           : message // ignore: cast_nullable_to_non_nullable
//               as String?,
//       data: data == freezed
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as DashboardData?,
//     ));
//   }
// }
//
// /// @nodoc
// @JsonSerializable()
// class _$_SellerDashboard implements _SellerDashboard {
//   const _$_SellerDashboard({this.status, this.message, this.data});
//
//   factory _$_SellerDashboard.fromJson(Map<String, dynamic> json) =>
//       _$$_SellerDashboardFromJson(json);
//
//   @override
//   final String? status;
//   @override
//   final String? message;
//   @override
//   final DashboardData? data;
//
//   @override
//   String toString() {
//     return 'SellerDashboard(status: $status, message: $message, data: $data)';
//   }
//
//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _SellerDashboard &&
//             const DeepCollectionEquality().equals(other.status, status) &&
//             const DeepCollectionEquality().equals(other.message, message) &&
//             const DeepCollectionEquality().equals(other.data, data));
//   }
//
//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(status),
//       const DeepCollectionEquality().hash(message),
//       const DeepCollectionEquality().hash(data));
//
//   @JsonKey(ignore: true)
//   @override
//   _$SellerDashboardCopyWith<_SellerDashboard> get copyWith =>
//       __$SellerDashboardCopyWithImpl<_SellerDashboard>(this, _$identity);
//
//   @override
//   Map<String, dynamic> toJson() {
//     return _$$_SellerDashboardToJson(this);
//   }
// }
//
// abstract class _SellerDashboard implements SellerDashboard {
//   const factory _SellerDashboard(
//       {String? status,
//       String? message,
//       DashboardData? data}) = _$_SellerDashboard;
//
//   factory _SellerDashboard.fromJson(Map<String, dynamic> json) =
//       _$_SellerDashboard.fromJson;
//
//   @override
//   String? get status;
//   @override
//   String? get message;
//   @override
//   DashboardData? get data;
//   @override
//   @JsonKey(ignore: true)
//   _$SellerDashboardCopyWith<_SellerDashboard> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
//   return _DashboardData.fromJson(json);
// }
//
// /// @nodoc
// class _$DashboardDataTearOff {
//   const _$DashboardDataTearOff();
//
//   _DashboardData call(
//       {@JsonKey(name: "total_orders") int? totalOrders,
//       @JsonKey(name: "pending_orders") int? pendingOrders,
//       @JsonKey(name: "processing_orders") int? processingOrders,
//       @JsonKey(name: "completed_orders") int? completedOrders,
//       @JsonKey(name: "gross_sales") SalesModel? grossSales,
//       @JsonKey(name: "earnings") SalesModel? earnings,
//       @JsonKey(name: "withdraw") SalesModel? withdraw}) {
//     return _DashboardData(
//       totalOrders: totalOrders,
//       pendingOrders: pendingOrders,
//       processingOrders: processingOrders,
//       completedOrders: completedOrders,
//       grossSales: grossSales,
//       earnings: earnings,
//       withdraw: withdraw,
//     );
//   }
//
//   DashboardData fromJson(Map<String, Object?> json) {
//     return DashboardData.fromJson(json);
//   }
// }
//
// /// @nodoc
// const $DashboardData = _$DashboardDataTearOff();
//
// /// @nodoc
// mixin _$DashboardData {
//   @JsonKey(name: "total_orders")
//   int? get totalOrders => throw _privateConstructorUsedError;
//   @JsonKey(name: "pending_orders")
//   int? get pendingOrders => throw _privateConstructorUsedError;
//   @JsonKey(name: "processing_orders")
//   int? get processingOrders => throw _privateConstructorUsedError;
//   @JsonKey(name: "completed_orders")
//   int? get completedOrders => throw _privateConstructorUsedError;
//   @JsonKey(name: "gross_sales")
//   SalesModel? get grossSales => throw _privateConstructorUsedError;
//   @JsonKey(name: "earnings")
//   SalesModel? get earnings => throw _privateConstructorUsedError;
//   @JsonKey(name: "withdraw")
//   SalesModel? get withdraw => throw _privateConstructorUsedError;
//
//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $DashboardDataCopyWith<DashboardData> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// /// @nodoc
// abstract class $DashboardDataCopyWith<$Res> {
//   factory $DashboardDataCopyWith(
//           DashboardData value, $Res Function(DashboardData) then) =
//       _$DashboardDataCopyWithImpl<$Res>;
//   $Res call(
//       {@JsonKey(name: "total_orders") int? totalOrders,
//       @JsonKey(name: "pending_orders") int? pendingOrders,
//       @JsonKey(name: "processing_orders") int? processingOrders,
//       @JsonKey(name: "completed_orders") int? completedOrders,
//       @JsonKey(name: "gross_sales") SalesModel? grossSales,
//       @JsonKey(name: "earnings") SalesModel? earnings,
//       @JsonKey(name: "withdraw") SalesModel? withdraw});
//
//   $SalesModelCopyWith<$Res>? get grossSales;
//   $SalesModelCopyWith<$Res>? get earnings;
//   $SalesModelCopyWith<$Res>? get withdraw;
// }
//
// /// @nodoc
// class _$DashboardDataCopyWithImpl<$Res>
//     implements $DashboardDataCopyWith<$Res> {
//   _$DashboardDataCopyWithImpl(this._value, this._then);
//
//   final DashboardData _value;
//   // ignore: unused_field
//   final $Res Function(DashboardData) _then;
//
//   @override
//   $Res call({
//     Object? totalOrders = freezed,
//     Object? pendingOrders = freezed,
//     Object? processingOrders = freezed,
//     Object? completedOrders = freezed,
//     Object? grossSales = freezed,
//     Object? earnings = freezed,
//     Object? withdraw = freezed,
//   }) {
//     return _then(_value.copyWith(
//       totalOrders: totalOrders == freezed
//           ? _value.totalOrders
//           : totalOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       pendingOrders: pendingOrders == freezed
//           ? _value.pendingOrders
//           : pendingOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       processingOrders: processingOrders == freezed
//           ? _value.processingOrders
//           : processingOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       completedOrders: completedOrders == freezed
//           ? _value.completedOrders
//           : completedOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       grossSales: grossSales == freezed
//           ? _value.grossSales
//           : grossSales // ignore: cast_nullable_to_non_nullable
//               as SalesModel?,
//       earnings: earnings == freezed
//           ? _value.earnings
//           : earnings // ignore: cast_nullable_to_non_nullable
//               as SalesModel?,
//       withdraw: withdraw == freezed
//           ? _value.withdraw
//           : withdraw // ignore: cast_nullable_to_non_nullable
//               as SalesModel?,
//     ));
//   }
//
//   @override
//   $SalesModelCopyWith<$Res>? get grossSales {
//     if (_value.grossSales == null) {
//       return null;
//     }
//
//     return $SalesModelCopyWith<$Res>(_value.grossSales!, (value) {
//       return _then(_value.copyWith(grossSales: value));
//     });
//   }
//
//   @override
//   $SalesModelCopyWith<$Res>? get earnings {
//     if (_value.earnings == null) {
//       return null;
//     }
//
//     return $SalesModelCopyWith<$Res>(_value.earnings!, (value) {
//       return _then(_value.copyWith(earnings: value));
//     });
//   }
//
//   @override
//   $SalesModelCopyWith<$Res>? get withdraw {
//     if (_value.withdraw == null) {
//       return null;
//     }
//
//     return $SalesModelCopyWith<$Res>(_value.withdraw!, (value) {
//       return _then(_value.copyWith(withdraw: value));
//     });
//   }
// }
//
// /// @nodoc
// abstract class _$DashboardDataCopyWith<$Res>
//     implements $DashboardDataCopyWith<$Res> {
//   factory _$DashboardDataCopyWith(
//           _DashboardData value, $Res Function(_DashboardData) then) =
//       __$DashboardDataCopyWithImpl<$Res>;
//   @override
//   $Res call(
//       {@JsonKey(name: "total_orders") int? totalOrders,
//       @JsonKey(name: "pending_orders") int? pendingOrders,
//       @JsonKey(name: "processing_orders") int? processingOrders,
//       @JsonKey(name: "completed_orders") int? completedOrders,
//       @JsonKey(name: "gross_sales") SalesModel? grossSales,
//       @JsonKey(name: "earnings") SalesModel? earnings,
//       @JsonKey(name: "withdraw") SalesModel? withdraw});
//
//   @override
//   $SalesModelCopyWith<$Res>? get grossSales;
//   @override
//   $SalesModelCopyWith<$Res>? get earnings;
//   @override
//   $SalesModelCopyWith<$Res>? get withdraw;
// }
//
// /// @nodoc
// class __$DashboardDataCopyWithImpl<$Res>
//     extends _$DashboardDataCopyWithImpl<$Res>
//     implements _$DashboardDataCopyWith<$Res> {
//   __$DashboardDataCopyWithImpl(
//       _DashboardData _value, $Res Function(_DashboardData) _then)
//       : super(_value, (v) => _then(v as _DashboardData));
//
//   @override
//   _DashboardData get _value => super._value as _DashboardData;
//
//   @override
//   $Res call({
//     Object? totalOrders = freezed,
//     Object? pendingOrders = freezed,
//     Object? processingOrders = freezed,
//     Object? completedOrders = freezed,
//     Object? grossSales = freezed,
//     Object? earnings = freezed,
//     Object? withdraw = freezed,
//   }) {
//     return _then(_DashboardData(
//       totalOrders: totalOrders == freezed
//           ? _value.totalOrders
//           : totalOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       pendingOrders: pendingOrders == freezed
//           ? _value.pendingOrders
//           : pendingOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       processingOrders: processingOrders == freezed
//           ? _value.processingOrders
//           : processingOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       completedOrders: completedOrders == freezed
//           ? _value.completedOrders
//           : completedOrders // ignore: cast_nullable_to_non_nullable
//               as int?,
//       grossSales: grossSales == freezed
//           ? _value.grossSales
//           : grossSales // ignore: cast_nullable_to_non_nullable
//               as SalesModel?,
//       earnings: earnings == freezed
//           ? _value.earnings
//           : earnings // ignore: cast_nullable_to_non_nullable
//               as SalesModel?,
//       withdraw: withdraw == freezed
//           ? _value.withdraw
//           : withdraw // ignore: cast_nullable_to_non_nullable
//               as SalesModel?,
//     ));
//   }
// }
//
// /// @nodoc
// @JsonSerializable()
// class _$_DashboardData implements _DashboardData {
//   const _$_DashboardData(
//       {@JsonKey(name: "total_orders") this.totalOrders,
//       @JsonKey(name: "pending_orders") this.pendingOrders,
//       @JsonKey(name: "processing_orders") this.processingOrders,
//       @JsonKey(name: "completed_orders") this.completedOrders,
//       @JsonKey(name: "gross_sales") this.grossSales,
//       @JsonKey(name: "earnings") this.earnings,
//       @JsonKey(name: "withdraw") this.withdraw});
//
//   factory _$_DashboardData.fromJson(Map<String, dynamic> json) =>
//       _$$_DashboardDataFromJson(json);
//
//   @override
//   @JsonKey(name: "total_orders")
//   final int? totalOrders;
//   @override
//   @JsonKey(name: "pending_orders")
//   final int? pendingOrders;
//   @override
//   @JsonKey(name: "processing_orders")
//   final int? processingOrders;
//   @override
//   @JsonKey(name: "completed_orders")
//   final int? completedOrders;
//   @override
//   @JsonKey(name: "gross_sales")
//   final SalesModel? grossSales;
//   @override
//   @JsonKey(name: "earnings")
//   final SalesModel? earnings;
//   @override
//   @JsonKey(name: "withdraw")
//   final SalesModel? withdraw;
//
//   @override
//   String toString() {
//     return 'DashboardData(totalOrders: $totalOrders, pendingOrders: $pendingOrders, processingOrders: $processingOrders, completedOrders: $completedOrders, grossSales: $grossSales, earnings: $earnings, withdraw: $withdraw)';
//   }
//
//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _DashboardData &&
//             const DeepCollectionEquality()
//                 .equals(other.totalOrders, totalOrders) &&
//             const DeepCollectionEquality()
//                 .equals(other.pendingOrders, pendingOrders) &&
//             const DeepCollectionEquality()
//                 .equals(other.processingOrders, processingOrders) &&
//             const DeepCollectionEquality()
//                 .equals(other.completedOrders, completedOrders) &&
//             const DeepCollectionEquality()
//                 .equals(other.grossSales, grossSales) &&
//             const DeepCollectionEquality().equals(other.earnings, earnings) &&
//             const DeepCollectionEquality().equals(other.withdraw, withdraw));
//   }
//
//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(totalOrders),
//       const DeepCollectionEquality().hash(pendingOrders),
//       const DeepCollectionEquality().hash(processingOrders),
//       const DeepCollectionEquality().hash(completedOrders),
//       const DeepCollectionEquality().hash(grossSales),
//       const DeepCollectionEquality().hash(earnings),
//       const DeepCollectionEquality().hash(withdraw));
//
//   @JsonKey(ignore: true)
//   @override
//   _$DashboardDataCopyWith<_DashboardData> get copyWith =>
//       __$DashboardDataCopyWithImpl<_DashboardData>(this, _$identity);
//
//   @override
//   Map<String, dynamic> toJson() {
//     return _$$_DashboardDataToJson(this);
//   }
// }
//
// abstract class _DashboardData implements DashboardData {
//   const factory _DashboardData(
//       {@JsonKey(name: "total_orders") int? totalOrders,
//       @JsonKey(name: "pending_orders") int? pendingOrders,
//       @JsonKey(name: "processing_orders") int? processingOrders,
//       @JsonKey(name: "completed_orders") int? completedOrders,
//       @JsonKey(name: "gross_sales") SalesModel? grossSales,
//       @JsonKey(name: "earnings") SalesModel? earnings,
//       @JsonKey(name: "withdraw") SalesModel? withdraw}) = _$_DashboardData;
//
//   factory _DashboardData.fromJson(Map<String, dynamic> json) =
//       _$_DashboardData.fromJson;
//
//   @override
//   @JsonKey(name: "total_orders")
//   int? get totalOrders;
//   @override
//   @JsonKey(name: "pending_orders")
//   int? get pendingOrders;
//   @override
//   @JsonKey(name: "processing_orders")
//   int? get processingOrders;
//   @override
//   @JsonKey(name: "completed_orders")
//   int? get completedOrders;
//   @override
//   @JsonKey(name: "gross_sales")
//   SalesModel? get grossSales;
//   @override
//   @JsonKey(name: "earnings")
//   SalesModel? get earnings;
//   @override
//   @JsonKey(name: "withdraw")
//   SalesModel? get withdraw;
//   @override
//   @JsonKey(ignore: true)
//   _$DashboardDataCopyWith<_DashboardData> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// SalesModel _$SalesModelFromJson(Map<String, dynamic> json) {
//   return _SalesModel.fromJson(json);
// }
//
// /// @nodoc
// class _$SalesModelTearOff {
//   const _$SalesModelTearOff();
//
//   _SalesModel call(
//       {@JsonKey(name: "last_month") double? lastMonth, int? month, int? week}) {
//     return _SalesModel(
//       lastMonth: lastMonth,
//       month: month,
//       week: week,
//     );
//   }
//
//   SalesModel fromJson(Map<String, Object?> json) {
//     return SalesModel.fromJson(json);
//   }
// }
//
// /// @nodoc
// const $SalesModel = _$SalesModelTearOff();
//
// /// @nodoc
// mixin _$SalesModel {
//   @JsonKey(name: "last_month")
//   double? get lastMonth => throw _privateConstructorUsedError;
//   int? get month => throw _privateConstructorUsedError;
//   int? get week => throw _privateConstructorUsedError;
//
//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $SalesModelCopyWith<SalesModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// /// @nodoc
// abstract class $SalesModelCopyWith<$Res> {
//   factory $SalesModelCopyWith(
//           SalesModel value, $Res Function(SalesModel) then) =
//       _$SalesModelCopyWithImpl<$Res>;
//   $Res call(
//       {@JsonKey(name: "last_month") double? lastMonth, int? month, int? week});
// }
//
// /// @nodoc
// class _$SalesModelCopyWithImpl<$Res> implements $SalesModelCopyWith<$Res> {
//   _$SalesModelCopyWithImpl(this._value, this._then);
//
//   final SalesModel _value;
//   // ignore: unused_field
//   final $Res Function(SalesModel) _then;
//
//   @override
//   $Res call({
//     Object? lastMonth = freezed,
//     Object? month = freezed,
//     Object? week = freezed,
//   }) {
//     return _then(_value.copyWith(
//       lastMonth: lastMonth == freezed
//           ? _value.lastMonth
//           : lastMonth // ignore: cast_nullable_to_non_nullable
//               as double?,
//       month: month == freezed
//           ? _value.month
//           : month // ignore: cast_nullable_to_non_nullable
//               as int?,
//       week: week == freezed
//           ? _value.week
//           : week // ignore: cast_nullable_to_non_nullable
//               as int?,
//     ));
//   }
// }
//
// /// @nodoc
// abstract class _$SalesModelCopyWith<$Res> implements $SalesModelCopyWith<$Res> {
//   factory _$SalesModelCopyWith(
//           _SalesModel value, $Res Function(_SalesModel) then) =
//       __$SalesModelCopyWithImpl<$Res>;
//   @override
//   $Res call(
//       {@JsonKey(name: "last_month") double? lastMonth, int? month, int? week});
// }
//
// /// @nodoc
// class __$SalesModelCopyWithImpl<$Res> extends _$SalesModelCopyWithImpl<$Res>
//     implements _$SalesModelCopyWith<$Res> {
//   __$SalesModelCopyWithImpl(
//       _SalesModel _value, $Res Function(_SalesModel) _then)
//       : super(_value, (v) => _then(v as _SalesModel));
//
//   @override
//   _SalesModel get _value => super._value as _SalesModel;
//
//   @override
//   $Res call({
//     Object? lastMonth = freezed,
//     Object? month = freezed,
//     Object? week = freezed,
//   }) {
//     return _then(_SalesModel(
//       lastMonth: lastMonth == freezed
//           ? _value.lastMonth
//           : lastMonth // ignore: cast_nullable_to_non_nullable
//               as double?,
//       month: month == freezed
//           ? _value.month
//           : month // ignore: cast_nullable_to_non_nullable
//               as int?,
//       week: week == freezed
//           ? _value.week
//           : week // ignore: cast_nullable_to_non_nullable
//               as int?,
//     ));
//   }
// }
//
// /// @nodoc
// @JsonSerializable()
// class _$_SalesModel implements _SalesModel {
//   const _$_SalesModel(
//       {@JsonKey(name: "last_month") this.lastMonth, this.month, this.week});
//
//   factory _$_SalesModel.fromJson(Map<String, dynamic> json) =>
//       _$$_SalesModelFromJson(json);
//
//   @override
//   @JsonKey(name: "last_month")
//   final double? lastMonth;
//   @override
//   final int? month;
//   @override
//   final int? week;
//
//   @override
//   String toString() {
//     return 'SalesModel(lastMonth: $lastMonth, month: $month, week: $week)';
//   }
//
//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _SalesModel &&
//             const DeepCollectionEquality().equals(other.lastMonth, lastMonth) &&
//             const DeepCollectionEquality().equals(other.month, month) &&
//             const DeepCollectionEquality().equals(other.week, week));
//   }
//
//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(lastMonth),
//       const DeepCollectionEquality().hash(month),
//       const DeepCollectionEquality().hash(week));
//
//   @JsonKey(ignore: true)
//   @override
//   _$SalesModelCopyWith<_SalesModel> get copyWith =>
//       __$SalesModelCopyWithImpl<_SalesModel>(this, _$identity);
//
//   @override
//   Map<String, dynamic> toJson() {
//     return _$$_SalesModelToJson(this);
//   }
// }
//
// abstract class _SalesModel implements SalesModel {
//   const factory _SalesModel(
//       {@JsonKey(name: "last_month") double? lastMonth,
//       int? month,
//       int? week}) = _$_SalesModel;
//
//   factory _SalesModel.fromJson(Map<String, dynamic> json) =
//       _$_SalesModel.fromJson;
//
//   @override
//   @JsonKey(name: "last_month")
//   double? get lastMonth;
//   @override
//   int? get month;
//   @override
//   int? get week;
//   @override
//   @JsonKey(ignore: true)
//   _$SalesModelCopyWith<_SalesModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
