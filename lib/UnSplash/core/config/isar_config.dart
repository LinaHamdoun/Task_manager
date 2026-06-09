


import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../show_new_image/data/models/photo_model_isar.dart';
class IsarConfig {

  static Future <Isar> init () async {
    final dir = await getApplicationDocumentsDirectory();

    return await Isar.open(
       [ PhotoIsarModelSchema ],
        directory: dir .path
    );
  }
}