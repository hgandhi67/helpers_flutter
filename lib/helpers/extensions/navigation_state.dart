import 'package:flutter/material.dart';

extension NavigatorStateHelperExtension on NavigatorState {
  ///Usually used with a **[SlidingPanel]**
  ///
  ///Do that:
  ///```dart
  ///Navigator.push(
  ///  TransparentRoute(builder: (_) => page, duration: duration),
  ///);
  /// ```
  @optionalTypeArgs
  Future<T?> pushOpaque<T extends Object?>(Widget page) {
    return this.push<T>(PageRouteBuilder(
      pageBuilder: (_, __, ___) => page,
      opaque: false,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    ));
  }
}