part of '../functions.dart';

Size getWidgetSize(GlobalKey key) {
  assert(key.currentState != null, 'The key is not attached to any widget');

  final RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;

  return renderBox.size;
}

Offset getWidgetOffset(GlobalKey key) {
  assert(key.currentState != null, 'The key is not attached to any widget');

  final RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;

  return renderBox.localToGlobal(Offset.zero);
}
