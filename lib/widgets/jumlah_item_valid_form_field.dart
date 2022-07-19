import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class JumlahItemValidFormField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String>? validator;
  final String? currentValue;
  final FocusNode? nextFocusNode;
  final FocusNode? focusNode;

  const JumlahItemValidFormField({
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
      keyboardType: TextInputType.number,
      initialValue: currentValue,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: "Jumlah Item Valid",
        helperText: "",
        border: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
      validator: validator,
    );
  }
}
