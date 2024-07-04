part of '../extensions.dart';

extension ExpandedExtension on Widget {
  Expanded expanded({Key? key, int flex = 1}) {
    return Expanded(
      key: key,
      flex: flex,
      child: this,
    );
  }
}
