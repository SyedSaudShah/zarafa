import '../../Export/export.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Draw custom artwork here
    final paint = Paint()..color = Colors.red;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width * 0.3;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
