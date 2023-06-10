import 'package:flutter/material.dart';
import 'package:flutter_mixin_sample/page_mixin.dart';
import 'package:flutter_mixin_sample/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ホームページ
class HomePage extends ConsumerWidget with PageMixin {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🍹 Flutter Mixin Sample 🍹'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ボタン ①
            ElevatedButton(
              child: const Text('1 のボタン'),
              onPressed: () async {
                execute(
                  context,
                  ref,
                  action: () async => await Utils.instance.function1(),
                  successMessage: '1 のボタンがタップされました',
                );
              },
            ),

            // ボタン ②
            ElevatedButton(
              child: const Text('2 のボタン'),
              onPressed: () async {
                execute(
                  context,
                  ref,
                  action: () async => await Utils.instance.function2(),
                  successMessage: '2 のボタンがタップされました',
                );
              },
            ),

            // ボタン ③
            ElevatedButton(
              child: const Text('3 のボタン'),
              onPressed: () async {
                execute(
                  context,
                  ref,
                  action: () async => await Utils.instance.function3(),
                  successMessage: '3 のボタンがタップされました',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
