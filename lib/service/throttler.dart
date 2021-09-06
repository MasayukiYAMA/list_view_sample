import 'package:flutter/foundation.dart';

/// 通常のthrottlerとは違い、実行待ち時間中にrunが走っても待ち時間後にactionは発火しないようにしてます。
class Throttler {
  Throttler({required this.milliseconds});

  final int milliseconds;

  DateTime lastExec = DateTime.now();

  void run(VoidCallback action) {
    final elapsed = DateTime.now().difference(lastExec);

    void exec() {
      lastExec = DateTime.now();
      action();
    }

    if (elapsed.compareTo(Duration(milliseconds: milliseconds)) >= 0) {
      exec();
    }
  }
}
