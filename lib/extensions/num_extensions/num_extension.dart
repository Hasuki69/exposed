part of '../extensions.dart';

extension NumExtension on num {
  num increment({int step = 1}) {
    return this + step;
  }

  num decrement({int step = 1}) {
    return this - step;
  }

  num add(num b) {
    return this + b;
  }

  num subtract(num b) {
    return this - b;
  }

  num multiply(num b) {
    return this * b;
  }

  num divide(num b) {
    return this / b;
  }

  bool isEqual(num b) {
    return this == b;
  }

  bool isGreaterThan(num b) {
    return this > b;
  }

  bool isGreaterOrEqual(num b) {
    return this >= b;
  }

  bool isLowerThan(num b) {
    return this < b;
  }

  bool isLowerOrEqual(num b) {
    return this <= b;
  }
}
