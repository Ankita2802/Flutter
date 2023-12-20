import 'package:figma/fluxstore_api_with_riverpod/theme/app_theme.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  final String name;
  final VoidCallback? onTap;
  final Color? backgroundcolor;
  final Color? forgroundcolor;
  final double? width;
  final double borderRadius;
  final BoxBorder? border;
  final EdgeInsets? padding;
  final Widget? icon;
  final Widget? child;
  final TextStyle? nameStyle;

  const AppButton({
    super.key,
    required this.name,
    this.onTap,
    this.backgroundcolor,
    this.forgroundcolor,
    this.borderRadius = 4,
    this.width,
    this.border,
    this.padding,
    this.icon,
    this.child,
    this.nameStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 14),
        width: width,
        decoration: BoxDecoration(
          color: backgroundcolor ?? AppColors.appPink,
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (icon != null) const SizedBox(width: 8),
            child ??
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: nameStyle ??
                      appWhiteBold.copyWith(
                        color: forgroundcolor,
                      ),
                ),
          ],
        ),
      ),
    );
  }
}
