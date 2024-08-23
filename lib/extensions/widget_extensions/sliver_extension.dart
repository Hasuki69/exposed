part of '../extensions.dart';

extension SliverExtension on Widget {
  Widget toSliver({Key? key}) {
    return SliverToBoxAdapter(
      key: key,
      child: this,
    );
  }

  // bool isSliver({bool throwOnError = false}) {
  //   final isSliverWidget =
  //       this is SliverMultiBoxAdaptorWidget || this is SingleChildRenderObjectWidget || this is SliverToBoxAdapter;

  //   if (!isSliverWidget && throwOnError) {
  //     throw ArgumentError('The provided widget is not a Sliver.');
  //   }

  //   return isSliverWidget;
  // }

  bool isSliver(Widget widget) {
    // First, check against known Sliver types
    if (widget is SliverList ||
        widget is SliverGrid ||
        widget is SliverAppBar ||
        widget is SliverToBoxAdapter ||
        widget is SliverFillRemaining ||
        widget is SliverFixedExtentList ||
        widget is SliverPadding ||
        widget is SliverPersistentHeader ||
        widget is SliverPrototypeExtentList ||
        widget is SliverAnimatedList) {
      return true;
    }

    // If the widget isn't a known Sliver, check if its RenderObject is a RenderSliver
    if (widget is RenderObjectWidget) {
      try {
        final renderObject = widget.createElement();
        return renderObject is RenderSliver;
      } catch (e) {
        // Handle any errors in creating the render object
        return false;
      }
    }

    return false;
  }
}
