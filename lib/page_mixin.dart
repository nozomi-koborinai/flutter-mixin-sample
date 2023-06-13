import 'package:flutter/material.dart';
import 'package:flutter_mixin_sample/components/snackbar.dart';
import 'package:flutter_mixin_sample/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/loading.dart';

mixin PageMixin {
  /// 画面側での共通的な処理をラップした Mixin
  /// in_1: BuildContext
  /// in_2: WidgetRef
  /// in_3: 画面側のイベントハンドラーとして呼び出したい処理
  /// in_4: 処理成功時に表示したいメッセージ
  Future<void> execute(
    BuildContext context,
    WidgetRef ref, {
    required Future<void> Function() action,
    required String successMessage,
  }) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      // 画面上にローディングアニメーションを表示する
      ref.watch(overlayLoadingProvider.notifier).state = true;

      // 引数でもらった処理を実行する
      await action();

      // 成功時のメッセージをスナックバーに表示する
      Utils.instance.showSnackBar(
        scaffoldMessenger,
        message: successMessage,
        mode: SnackBarMode.success,
      );
    } catch (e) {
      // 例外が発生した場合はメッセージをスナックバーに表示する
      Utils.instance.showSnackBar(
        scaffoldMessenger,
        message: 'failure: ${e.toString()}',
        mode: SnackBarMode.failure,
      );
    } finally {
      // 画面上に表示されているローディングアニメーションを停止する
      ref.watch(overlayLoadingProvider.notifier).state = false;
    }
  }
}
