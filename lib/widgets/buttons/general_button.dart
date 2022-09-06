import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final double? width;
  final double height;
  final bool isActive;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;

  const GeneralButton({
    required this.child,
    required this.onTap,
    this.width,
    this.borderRadius,
    this.height = 37.0,
    this.isActive = true,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.color = Colors.orangeAccent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isActive,
      child: Padding(
        padding: margin,
        child: Material(
          color: isActive ? color : color.withOpacity(0.45),
          borderRadius: borderRadius ?? BorderRadius.circular(4.0),
          child: InkWell(
            onTap: onTap,
            borderRadius: borderRadius ?? BorderRadius.circular(4.0),
            splashColor: Colors.black26,
            child: Container(
              width: width,
              height: height,
              padding: padding,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: borderRadius ?? BorderRadius.circular(5.0),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
