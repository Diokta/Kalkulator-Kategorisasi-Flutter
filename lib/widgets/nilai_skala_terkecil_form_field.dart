import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NilaiSkalaTerkecilFormField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String>? validator;
  final String? currentValue;
  final FocusNode? nextFocusNode;
  final FocusNode? focusNode;

  const NilaiSkalaTerkecilFormField({
    Key? key,
    required this.onChanged,
    required this.currentValue,
    required this.validator,
    required this.nextFocusNode,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onFieldSubmitted: (_) => nextFocusNode?.requestFocus(),
      initialValue: currentValue,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: "Nilai Skala Terkecil",
        helperText: "",
        border: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
      validator: validator,
    );
  }
}
