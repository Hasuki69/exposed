part of '../extensions.dart';

extension SizedBoxExtension on num {
  Widget get horzGap {
    return SizedBox(
      height: double.tryParse(toString()),
    );
  }

  Widget get vertGap {
    return SizedBox(
      width: double.tryParse(toString()),
    );
  }

  Widget get gap {
    return SizedBox.square(
      dimension: double.tryParse(toString()),
    );
  }
}
