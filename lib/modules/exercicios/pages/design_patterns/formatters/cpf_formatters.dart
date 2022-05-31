import 'package:flutter/services.dart';

class CpfMask extends TextInputFormatter {
  FilteringTextInputFormatter caracterPermitido() =>
      FilteringTextInputFormatter.allow(RegExp(r'[\d]'));

  String addMask(String value) => formatEditUpdate(
          TextEditingValue(text: value), TextEditingValue(text: value))
      .text;

  ///###.###.###-##
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 11) {
      return oldValue;
    }
    final valorRegex = RegExp(r'\b(\d{1,3})(\d{1,3})?(\d{1,3})?(\d{1,2})?\b')
        .firstMatch(newValue.text);
    var selectionIndex = newValue.selection.baseOffset;
    String cpfRetorno = valorRegex?.group(1) ?? '';
    if (valorRegex?.group(2) != null) {
      cpfRetorno += '.${valorRegex!.group(2)!}';
      if (selectionIndex > 3) {
        selectionIndex++;
      }
      if (valorRegex.group(3) != null) {
        cpfRetorno += '.${valorRegex.group(3)!}';
        if (selectionIndex > 7) {
          selectionIndex++;
        }
        if (valorRegex.group(4) != null) {
          cpfRetorno += '-${valorRegex.group(4)!}';
          if (selectionIndex > 11) {
            selectionIndex++;
          }
        }
      }
    }
    return TextEditingValue(
      text: cpfRetorno,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
