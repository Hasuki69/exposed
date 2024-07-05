part of '../functions.dart';

class AutoTitleCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.titleCase;

    if (newText != newValue.text) {
      return TextEditingValue(text: newText);
    } else {
      return newValue;
    }
  }
}
