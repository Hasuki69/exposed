part of '../extensions.dart';

extension AspectRatioExtension on Widget {
  AspectRatio aspectRatio(double aspectRatio, {Key? key}) {
    return AspectRatio(
      key: key,
      aspectRatio: aspectRatio,
      child: this,
    );
  }
}
