part of '../extensions.dart';

extension LoadingExtension on BuildContext {
  Future<T?> loading<T>({
    Key? key,
    Widget? loadingWidget,
  }) {
    return dialog(
      builder: (context) => Center(
        key: key,
        child: loadingWidget ?? const CircularProgressIndicator(),
      ),
    );
  }
}
