import 'package:flutter/material.dart';

/// スナックバーモード
enum SnackBarMode {
  /// 成功
  success,

  /// 失敗
  failure,
}

/// 処理失敗(エラー)用のスナックバー
class FailureSnackBar extends SnackBar {
  FailureSnackBar({super.key, required String message})
      : super(
          content: Text(message),
          backgroundColor: Colors.redAccent,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        );
}

/// 処理成功用スナックバー
class SuccessSnackBar extends SnackBar {
  SuccessSnackBar({super.key, required String message})
      : super(
          content: Text(message),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        );
}
