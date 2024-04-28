import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:netshare/data/hivedb/hive_storage.dart';
import 'package:netshare/util/utility_functions.dart';
import 'package:window_size/window_size.dart';

Future <void> initPlugins() async {
  if(UtilityFunctions.isMobile) {
    await FlutterDownloader.initialize(debug: kDebugMode, ignoreSsl: true);
  }
  await HiveStorage().init();

  // window_size configuration
  if(UtilityFunctions.isDesktop) {
    setWindowMinSize(const Size(700, 600));
    setWindowMaxSize(Size.infinite);
  }
}