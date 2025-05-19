import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../routes/app_routing.dart';

BuildContext get globalCurrentContext =>
    GetIt.instance<AppRouter>().navigatorKey.currentContext!;
