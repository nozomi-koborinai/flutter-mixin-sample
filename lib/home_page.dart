import 'package:flutter/material.dart';
import 'package:flutter_mixin_sample/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/loading.dart';
import 'components/snackbar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('🍹 Flutter Mixin Sample 🍹'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('1 のボタン'),
              onPressed: () async {
                try {
                  ref.watch(overlayLoadingProvider.notifier).state = true;
                  await Utils.instance.function();
                  Utils.instance.showSnackBar(
                    scaffoldMessenger,
                    mode: SnackBarMode.success,
                    message: '1 のボタンがタップされました',
                  );
                } catch (e) {
                  Utils.instance.showSnackBar(
                    scaffoldMessenger,
                    mode: SnackBarMode.failure,
                    message: 'failure: ${e.toString()}',
                  );
                } finally {
                  ref.watch(overlayLoadingProvider.notifier).state = false;
                }
              },
            ),
            ElevatedButton(
              child: const Text('2 のボタン'),
              onPressed: () async {
                try {
                  ref.watch(overlayLoadingProvider.notifier).state = true;
                  await Utils.instance.function();
                  Utils.instance.showSnackBar(
                    scaffoldMessenger,
                    mode: SnackBarMode.success,
                    message: '2 のボタンがタップされました',
                  );
                } catch (e) {
                  Utils.instance.showSnackBar(
                    scaffoldMessenger,
                    mode: SnackBarMode.failure,
                    message: 'failure: ${e.toString()}',
                  );
                } finally {
                  ref.watch(overlayLoadingProvider.notifier).state = false;
                }
              },
            ),
            ElevatedButton(
              child: const Text('3 のボタン'),
              onPressed: () async {
                try {
                  ref.watch(overlayLoadingProvider.notifier).state = true;
                  await Utils.instance.function();
                  Utils.instance.showSnackBar(
                    scaffoldMessenger,
                    mode: SnackBarMode.success,
                    message: '3 のボタンがタップされました',
                  );
                } catch (e) {
                  Utils.instance.showSnackBar(
                    scaffoldMessenger,
                    mode: SnackBarMode.failure,
                    message: 'failure: ${e.toString()}',
                  );
                } finally {
                  ref.watch(overlayLoadingProvider.notifier).state = false;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
