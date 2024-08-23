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

  bool isSliver(Widget widget, {bool throwOnError = false}) {
    if (widget is RenderObjectWidget) {
      final element = widget.createElement();

      element.mount(null, null);

      final isRenderSliver = element.renderObject is RenderSliver;

      element.unmount();

      return isRenderSliver;
    }

    return false;
  }
}
