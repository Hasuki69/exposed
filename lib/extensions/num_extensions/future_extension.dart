part of '../extensions.dart';

extension FutureExtension on num {
  Future delay([FutureOr Function()? callback]) async {
    return Future.delayed(
      Duration(milliseconds: (this * 1000).round()),
      callback,
    );
  }

  Future<T> delayWithValue<T>(T value) async {
    await delay();
    return value;
  }

  Future<T> delayWithCallback<T>(FutureOr<T> Function() callback) async {
    await delay();
    return callback();
  }
}
