part of '../extensions.dart';

extension PaddingExtension on Widget {
  Widget pad(double value, {Key? key}) {
    return isSliver(this)
        ? SliverPadding(
            key: key,
            padding: EdgeInsets.all(value),
            sliver: this,
          )
        : Padding(
            key: key,
            padding: EdgeInsets.all(value),
            child: this,
          );
  }

  Widget padFromViewPadding(ViewPadding padding, double devicePixelRatio, {Key? key}) {
    return isSliver(this)
        ? SliverPadding(
            key: key,
            padding: EdgeInsets.fromViewPadding(padding, devicePixelRatio),
            sliver: this,
          )
        : Padding(
            key: key,
            padding: EdgeInsets.fromViewPadding(padding, devicePixelRatio),
            child: this,
          );
  }

  Widget padLTRB(double left, double top, double right, double bottom, {Key? key}) {
    return isSliver(this)
        ? SliverPadding(
            key: key,
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            sliver: this,
          )
        : Padding(
            key: key,
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: this,
          );
  }

  Widget padOnly({Key? key, double left = 0.0, double top = 0.0, double right = 0.0, double bottom = 0.0}) {
    return isSliver(this)
        ? SliverPadding(
            padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
            sliver: this,
          )
        : Padding(
            key: key,
            padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
            child: this,
          );
  }

  Widget padSymmetric({Key? key, double vert = 0.0, double horiz = 0.0}) {
    return isSliver(this)
        ? SliverPadding(
            key: key,
            padding: EdgeInsets.symmetric(vertical: vert, horizontal: horiz),
            sliver: this,
          )
        : Padding(
            key: key,
            padding: EdgeInsets.symmetric(vertical: vert, horizontal: horiz),
            child: this,
          );
  }
}
