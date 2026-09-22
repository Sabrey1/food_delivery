import 'package:get/get.dart';

import 'en.dart';
import 'km.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'km_KHM': km,
      };
}
