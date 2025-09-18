import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
    this.textColor,
    this.borderRadius = 8,
    this.padding = const EdgeInsets.symmetric(vertical: 12),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? Theme.of(context).primaryColor,
      padding: padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Text(
        title,
        style:
            textStyle ??
            Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
