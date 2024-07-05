part of '../extensions.dart';

extension SnackBarExtension on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackbar({
    Key? key,
    Widget? content,
    String? message,
    TextStyle? style,
    TextAlign? textAlign = TextAlign.center,
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    HitTestBehavior? hitTestBehavior,
    SnackBarBehavior? behavior,
    SnackBarAction? action,
    double? actionOverflowThreshold,
    bool? showCloseIcon,
    Color? closeIconColor,
    Duration duration = const Duration(seconds: 3),
    Animation<double>? animation,
    void Function()? onVisible,
    DismissDirection? dismissDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    assert(content != null || message != null, 'Either content or message must not be null');

    return ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      key: key,
      content: content ?? Text(message ?? '', style: style, textAlign: textAlign),
      backgroundColor: backgroundColor,
      elevation: elevation,
      margin: margin,
      padding: padding,
      width: width,
      shape: shape,
      hitTestBehavior: hitTestBehavior,
      behavior: behavior,
      action: action,
      actionOverflowThreshold: actionOverflowThreshold,
      showCloseIcon: showCloseIcon,
      closeIconColor: closeIconColor,
      duration: duration,
      animation: animation,
      onVisible: onVisible,
      dismissDirection: dismissDirection,
      clipBehavior: clipBehavior,
    ));
  }
}
