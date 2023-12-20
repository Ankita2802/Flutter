import 'package:figma/fluxstore_api_with_riverpod/theme/app_theme.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextformField extends StatefulWidget {
  const AppTextformField({
    super.key,
    required this.controller,
    this.hintText,
    this.suffixIcon,
    this.suffix,
    this.labelText,
    this.labelStyle,
    this.cursorHeight = 16,
    this.maxLength,
    this.maxLines = 1,
    this.minLines = 1,
    this.enable = true,
    this.initialvalue,
    this.obsecureText = false,
    this.textInputAction,
    this.textInputType,
    required this.errorText,
    this.validate,
    this.onChange,
    this.maxDigit,
    this.inputFormatters,
  });
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final TextStyle? labelStyle;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final double? cursorHeight;
  final bool enable;
  final String? initialvalue;
  final bool obsecureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final String errorText;
  final String? validate;
  final ValueChanged<String>? onChange;
  final int? maxDigit;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<AppTextformField> createState() => _AppTextformFieldState();
}

class _AppTextformFieldState extends State<AppTextformField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Text(
            widget.labelText!,
            // style: widget.labelStyle ?? titleBlackBold.copyWith(fontSize: 14),
          ),
        const SizedBox(height: 4),
        TextFormField(
          enabled: widget.enable,
          initialValue: widget.initialvalue,
          cursorColor: AppColors.appBlack,
          style: greyNormal,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          minLines: widget.minLines,
          cursorHeight: widget.cursorHeight,
          cursorWidth: 1,
          controller: widget.controller,
          obscureText: widget.obsecureText,
          keyboardType: widget.textInputType,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          validator: (value) {
            if (value!.isEmpty) {
              return widget.errorText;
            }
            return widget.validate;
          },
          inputFormatters: widget.maxDigit != null
              ? [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(widget.maxDigit),
                ]
              : widget.textInputType != TextInputType.phone
                  ? widget.inputFormatters
                  : [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
          decoration: InputDecoration(
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon,
              suffix: widget.suffix,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: AppColors.filterGrey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: AppColors.filterGrey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: AppColors.filterGrey))),
        ),
      ],
    );
  }
}
