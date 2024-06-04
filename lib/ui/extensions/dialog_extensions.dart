import 'package:flutter/material.dart';

extension DialogExtensions on BuildContext {
  void openDialog({
    required WidgetBuilder builder,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    bool barrierDismissible = true,
  }) {
    showDialog(
      context: this,
      builder: builder,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
    );
  }
}
