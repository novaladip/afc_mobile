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
  final Color color;
  final Color valueColor;
  final Color labelColor;
  final String initialValue;
  final Function(String) onChanged;
  final double borderRadius;

  const TextInput({
    Key key,
    this.validator,
    @required this.labelText,
    this.enabled = true,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.unspecified,
    this.onFieldSubmitted,
    this.controller,
    this.marginVertical = 8,
    this.obscureText = false,
    this.onSaved,
    this.errorText,
    this.helperText,
    this.onTap,
    this.color,
    this.valueColor = Colors.black,
    this.labelColor = Colors.grey,
    this.initialValue,
    this.onChanged,
    this.borderRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _color = color != null ? color : Theme.of(context).primaryColor;

    return Container(
      margin: EdgeInsets.symmetric(vertical: marginVertical),
      child: TextFormField(
        initialValue: initialValue,
        style: TextStyle(color: valueColor),
        enabled: enabled,
        onTap: onTap,
        controller: controller,
        obscureText: obscureText,
        onSaved: onSaved,
        focusNode: focusNode,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        onChanged: onChanged,
        onFieldSubmitted: (_) => onFieldSubmitted(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          labelStyle: TextStyle(color: labelColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: _color,
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: _color,
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
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
