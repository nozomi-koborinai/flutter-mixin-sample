import 'package:flutter/material.dart';

import 'components/snackbar.dart';

/// View に関するUtility メソッド群
class Utils {
  /// singleton
  Utils._();
  static final instance = Utils._();

  /// スナックバー表示
  /// in_1: ScaffoldMessenger
  /// in_2: 表示モード（成功 or 失敗）
  /// in_3: 表示するメッセージ
  void showSnackBar(
    ScaffoldMessengerState scaffoldMessenger, {
    required SnackBarMode mode,
    required String message,
  }) {
    final snackBar = mode == SnackBarMode.success
        ? SuccessSnackBar(message: message)
        : FailureSnackBar(message: message);
    scaffoldMessenger.showSnackBar(snackBar);
  }

  /// ボタン ① 押下時の処理
  Future<void> function1() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      throw Exception('例外が発生しました');
    }
  }

  /// ボタン ② 押下時の処理
  Future<void> function2() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      throw Exception('例外が発生しました');
    }
  }

  /// ボタン ③ 押下時の処理
  Future<void> function3() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      throw Exception('例外が発生しました');
    }
  }
}
