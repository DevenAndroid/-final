import 'package:get/get.dart';
import 'package:dinelah_vendor/data/models/earning/earnings.dart';
import 'package:dinelah_vendor/data/repository/earnings_repository.dart';

class EarningsController extends GetxController {
  final EarningsRepository _repository = EarningsRepository();
  final Rx<EarningModel> _earnings = Rx<EarningModel>(const EarningModel());
  EarningModel get earnings => _earnings.value;

  @override
  void onInit() {
    super.onInit();
    _getStoreEarnings();
  }

  void _getStoreEarnings() {
    _repository.getStoreEarnings().then((earning) {
      _earnings.value = earning;
      update();
    });
  }

  void refreshEarnings() => _getStoreEarnings();
}
