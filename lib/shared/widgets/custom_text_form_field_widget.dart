import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/shared/themes/app_color.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  final Function(String)? onChanged;
  final Widget? suffix;
  final TextInputType? textInputType;
  final bool? enabled;
  final bool? autoFocus;
  final bool? obscureText;
  final int? maxLength;
  final String? errorText;
  final String? helpText;
  final String? prefixText;
  final String? initialText;
  final List<TextInputFormatter>? inputFormatters;

  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.onChanged,
    this.suffix,
    this.textInputType,
    this.enabled,
    this.autoFocus,
    this.maxLength,
    this.errorText,
    this.obscureText,
    this.controller,
    this.helpText,
    this.prefixText,
    this.initialText,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final FocusNode _textFieldFocus = FocusNode();
  Color _color = AppColors.unfocusBgColor;

  @override
  void initState() {
    _textFieldFocus.addListener(() {
      if (_textFieldFocus.hasFocus) {
        setState(() {
          _color = AppColors.focusBgColor;
        });
      } else {
        setState(() {
          _color = AppColors.unfocusBgColor;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _textFieldFocus,
      inputFormatters: widget.inputFormatters,
      autofocus: widget.autoFocus ?? false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      initialValue: widget.initialText,
      controller: widget.initialText == null ? widget.controller : null,
      onChanged: widget.onChanged,
      keyboardType: widget.textInputType,
      obscureText: widget.obscureText ?? false,
      keyboardAppearance: Brightness.dark,
      cursorHeight: 24,
      cursorColor: AppColors.white,
      style: const TextStyle(
          color: AppColors.white, decoration: TextDecoration.none),
      decoration: InputDecoration(
          filled: true,
          fillColor: _color,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6),
          ),
          labelText: widget.label,
          labelStyle: TextStyle(color: AppColors.fontColorGrey),
          floatingLabelStyle:
              const TextStyle(color: AppColors.white, height: 5),
          helperStyle: const TextStyle(fontSize: 10),
          helperText: widget.helpText,
          errorText: widget.errorText,
          suffixStyle: TextStyle(color: AppColors.fontColorGrey),
          suffixIcon: widget.suffix,
          prefixText: widget.prefixText,
          alignLabelWithHint: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 24)),
    );
  }
}
