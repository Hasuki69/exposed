part of '../extensions.dart';

extension ListExtension on List {
  List<Widget> notNullWidget() {
    return whereType<Widget>().toList();
  }
}
