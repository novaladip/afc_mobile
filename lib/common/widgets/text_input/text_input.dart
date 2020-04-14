import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String Function(String) validator;
  final void Function() onFieldSubmitted;
  final String labelText;
  final bool enabled;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final double marginVertical;
  final bool obscureText;
  final String errorText;
  final Function(String) onSaved;
  final String helperText;
  final void Function() onTap;

  const TextInput({
    Key key,
    this.validator,
    @required this.labelText,
    this.enabled = true,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.unspecified,
    this.onFieldSubmitted,
    @required this.controller,
    this.marginVertical = 15,
    this.obscureText = false,
    this.onSaved,
    this.errorText,
    this.helperText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginVertical),
      child: TextFormField(
        enabled: enabled,
        onTap: onTap,
        controller: controller,
        obscureText: obscureText,
        onSaved: onSaved,
        focusNode: focusNode,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        onFieldSubmitted: (_) => onFieldSubmitted(),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          filled: true,
          labelText: labelText,
          enabled: enabled,
          errorText: errorText,
          helperText: helperText,
        ),
      ),
    );
  }
}
