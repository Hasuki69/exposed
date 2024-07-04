part of '../extensions.dart';

extension GestureDetectorExtension on Widget {
  GestureDetector onTap(Function()? function, {Key? key}) {
    return GestureDetector(
      key: key,
      onTap: function,
      child: this,
    );
  }

  GestureDetector onDoubleTap(Function()? function, {Key? key}) {
    return GestureDetector(
      key: key,
      onDoubleTap: function,
      child: this,
    );
  }

  GestureDetector onLongPress(Function()? function, {Key? key}) {
    return GestureDetector(
      key: key,
      onLongPress: function,
      child: this,
    );
  }
}
