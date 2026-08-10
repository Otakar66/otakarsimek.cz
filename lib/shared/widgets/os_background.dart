import 'package:flutter/material.dart';

class OSBackground extends StatelessWidget {
  final Widget child;

  const OSBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFD2E5FF), Color(0xFFEEF5FF), Color(0xFFF8FBFF)],
              stops: [0.0, 0.45, 1.0],
            ),
          ),
        ),

        CustomPaint(painter: _DotPatternPainter(), child: child),
      ],
    );
  }
}

class _DotPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()..color = const Color(0xFF1565F5).withValues(alpha: 0.24);

    const spacing = 36.0;
    const radius = 1.2;

    for (double y = 0; y < size.height; y += spacing) {
      for (double x = 0; x < size.width; x += spacing) {
        canvas.drawCircle(Offset(x, y), radius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
