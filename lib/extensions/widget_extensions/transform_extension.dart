part of '../extensions.dart';

enum FlipAxis { vert, horz, both }

extension TransformExtension on Widget {
  Transform transform({
    Key? key,
    required Matrix4 transform,
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) {
    return Transform(
      key: key,
      transform: transform,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      filterQuality: filterQuality,
      child: this,
    );
  }

  Transform scale({
    Key? key,
    double? scale,
    double? scaleX,
    double? scaleY,
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) {
    return Transform.scale(
      key: key,
      scale: scale,
      scaleX: scaleX,
      scaleY: scaleY,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: this,
    );
  }

  Transform rotate({
    Key? key,
    required double angle,
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) {
    return Transform.rotate(
      key: key,
      angle: angle,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      filterQuality: filterQuality,
      child: this,
    );
  }

  Transform translate({
    Key? key,
    required Offset offset,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) {
    return Transform.translate(
      key: key,
      offset: offset,
      transformHitTests: transformHitTests,
      filterQuality: filterQuality,
      child: this,
    );
  }

  Transform flip({
    Key? key,
    required FlipAxis flip,
    Offset? origin,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) {
    return Transform.flip(
      key: key,
      flipX: flip == FlipAxis.horz || flip == FlipAxis.both,
      flipY: flip == FlipAxis.vert || flip == FlipAxis.both,
      origin: origin,
      transformHitTests: transformHitTests,
      filterQuality: filterQuality,
      child: this,
    );
  }
}
