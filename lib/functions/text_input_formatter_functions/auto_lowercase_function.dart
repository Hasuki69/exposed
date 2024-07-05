part of '../functions.dart';

class AutoLowerCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.toLowerCase();

    return newValue.copyWith(text: newText);
  }
}
