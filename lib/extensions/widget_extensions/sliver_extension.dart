part of '../extensions.dart';

extension SliverExtension on Widget {
  Widget tosliver({Key? key}) {
    return SliverToBoxAdapter(
      key: key,
      child: this,
    );
  }

  bool isSliver({bool throwOnError = false}) {
    final isSliverWidget =
        this is SliverMultiBoxAdaptorWidget || this is SingleChildRenderObjectWidget || this is SliverToBoxAdapter;

    if (!isSliverWidget && throwOnError) {
      throw ArgumentError('The provided widget is not a Sliver.');
    }

    return isSliverWidget;
  }
}
