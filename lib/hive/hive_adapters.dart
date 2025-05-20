import 'package:hive_ce/hive.dart';

import '../core/models/app_model.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([AdapterSpec<AppModel>()])
// Annotations must be on some element
// ignore: unused_element
void _() {}
