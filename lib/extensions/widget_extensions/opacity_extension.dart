part of '../extensions.dart';

extension OpacityExtension on Widget {
  Opacity opacity(double opacity, {Key? key, bool alwaysIncludeSemantics = false}) {
    return Opacity(
      key: key,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: this,
    );
  }
}
