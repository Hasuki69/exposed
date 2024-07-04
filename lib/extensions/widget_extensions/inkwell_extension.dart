part of '../extensions.dart';

extension InkWellExtension on Widget {
  InkWell inkWell({
    Key? key,
    Function()? onTap,
    Function()? onDoubleTap,
    Function()? onLongPress,
    Function(TapDownDetails)? onTapDown,
    Function(TapUpDetails)? onTapUp,
    Function()? onTapCancel,
    Function()? onSecondaryTap,
    Function(TapUpDetails)? onSecondaryTapUp,
    Function(TapDownDetails)? onSecondaryTapDown,
    Function()? onSecondaryTapCancel,
    Function(bool)? onHighlightChanged,
    Function(bool)? onHover,
  }) {
    return InkWell(
      key: key,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      child: this,
    );
  }
}
