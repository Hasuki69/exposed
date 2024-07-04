part of '../extensions.dart';

extension PositionedExtension on Widget {
  Positioned position({
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) {
    return Positioned(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionTop({Key? key, required double top, double? width, double? height}) {
    return Positioned(
      key: key,
      top: top,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionBottom({Key? key, required double bottom, double? width, double? height}) {
    return Positioned(
      key: key,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionLeft({Key? key, required double left, double? width, double? height}) {
    return Positioned(
      key: key,
      left: left,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionRight({Key? key, required double right, double? width, double? height}) {
    return Positioned(
      key: key,
      right: right,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionLRTB({
    Key? key,
    required double top,
    required double bottom,
    required double left,
    required double right,
    double? width,
    double? height,
  }) {
    return Positioned(
      key: key,
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionLR({Key? key, required double left, required double right, double? width, double? height}) {
    return Positioned(
      key: key,
      left: left,
      right: right,
      width: width,
      height: height,
      child: this,
    );
  }

  Positioned positionTB({Key? key, required double top, required double bottom, double? width, double? height}) {
    return Positioned(
      key: key,
      top: top,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }
}
