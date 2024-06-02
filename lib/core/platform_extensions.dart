import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

extension PlatformExtensions on Platform {
  static bool get isMobile => isAndroid || isIos;
  static bool get isDesktop => isWindows || isMacOS || isLinux;

  static bool get isWeb => kIsWeb;
  static bool get isAndroid => Platform.isAndroid;
  static bool get isIos => Platform.isIOS;
  static bool get isMacOS => Platform.isMacOS;
  static bool get isWindows => Platform.isWindows;
  static bool get isLinux => Platform.isLinux;
}
