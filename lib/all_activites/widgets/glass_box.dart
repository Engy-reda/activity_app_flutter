import 'dart:ui';
import 'package:flutter/widgets.dart';

class GlassBox extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  const GlassBox({
    super.key,
    required this.child,
    this.borderRadius = BorderRadius.zero,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius as BorderRadiusGeometry,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(color: color, child: child),
      ),
    );
  }
}
