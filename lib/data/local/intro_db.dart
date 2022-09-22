import 'package:get_storage/get_storage.dart';
import 'package:dinelah_vendor/constraints/strings.dart';

final _box = GetStorage(dbName);

class IntroDb {
  static bool isFirstTimeOpen() {
    bool? intro = _box.read<bool?>('intro');
    if (intro == null) {
      _box.write('intro', false);
      return true;
    }
    return intro;
  }
}
