import 'package:flutter/material.dart';

class ItemDecoration extends StatelessWidget {
  const ItemDecoration(
      {super.key,
      this.fit,
      this.pathImage,
      this.height,
      this.margin,
      this.borderRadius,
      required this.color,
      this.gradient,
      this.marginLeft,
      this.marginRight,
      this.child,
      this.width,
      this.clipBehavior,
      this.radius,
      this.begin,
      this.end,
      this.border,
      this.alignment,
      this.padding,
      this.boxShadow,
      this.decoColor});

  final EdgeInsetsGeometry? padding;
  final Alignment? alignment;
  final Alignment? begin;
  final Alignment? end;
  final LinearGradient? gradient;
  final double? width;
  final double? marginRight;
  final double? marginLeft;
  final List<BoxShadow>? boxShadow;
  final List<Color> color;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final String? pathImage;
  final BoxFit? fit;
  final Widget? child;
  final Clip? clipBehavior;
  final BorderRadius? radius;
  final Border? border;
  final Color? decoColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      clipBehavior: clipBehavior ?? Clip.none,
      margin: EdgeInsets.only(
        left: marginLeft ?? 0.0,
        right: marginRight ?? 0.0,
      ),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: decoColor,
        image: pathImage != null
            ? DecorationImage(
                image: AssetImage(pathImage!),
                fit: fit ?? BoxFit.cover,
              )
            : null,
        boxShadow: boxShadow ??
            const [
              BoxShadow(
                color: Colors.transparent,
                offset: Offset(0, -10),
                blurRadius: 20,
                spreadRadius: 0,
              ),
            ],
        gradient: LinearGradient(
          begin: begin ?? Alignment.topLeft,
          end: end ?? Alignment.bottomRight,
          colors: color,
        ),
        border: border ?? Border.all(color: Colors.transparent, width: 1),
        borderRadius: radius ?? borderRadius,
      ),
      child: child,
    );
  }
}
