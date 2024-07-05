part of '../extensions.dart';

extension ShimmerExtension on Widget {
  Widget shimmer({
    Key? key,
    Color? baseColor,
    Color? highlightColor,
    Duration period = Durations.extralong4,
    ShimmerDirection direction = ShimmerDirection.ltr,
    int loop = 0,
    bool enabled = true,
  }) {
    return Shimmer.fromColors(
      key: key,
      baseColor: baseColor ?? Colors.grey[300]!,
      highlightColor: highlightColor ?? Colors.grey[100]!,
      period: period,
      direction: direction,
      loop: loop,
      enabled: enabled,
      child: this,
    );
  }
}
