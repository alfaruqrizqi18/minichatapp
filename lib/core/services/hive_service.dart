import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../hive/hive_registrar.g.dart';

class CosmoHive {
  static late Box appBox;

  Future<void> init() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive
      ..init(appDocumentDirectory.path)
      ..registerAdapters();
    await initBoxes();
  }

  Future<void> initBoxes() async {
    appBox = await Hive.openBox('appBox');
  }

  void destroySessions() async {
    await appBox.clear();
  }
}
