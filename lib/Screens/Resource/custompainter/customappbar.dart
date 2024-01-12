import '../../../Export/export.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 170, 42, 228)
      ..color = const Color.fromARGB(255, 163, 156, 253)
      ..color = const Color.fromARGB(255, 210, 143, 242)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    // //path_0.moveTo(size.width * 0.1875000, size.height * 0.2020000);
    // path_0.lineTo(size.width * 0.8112500, size.height * 0.2020000);
    // path_0.lineTo(size.width * 1.0, size.height * 0.8020000);
    // path_0.quadraticBezierTo(size.width * 0.4533875, size.height * 0.9887600,
    //     size.width * 0.1875000, size.height * 0.9020000);
    // path_0.quadraticBezierTo(size.width * 0.1875000, size.height * 0.7270000,
    //     size.width * 0.1875000, size.height * 0.2020000);
    // path_0.close();
    path_0.lineTo(size.width * 1.0, 0);
    path_0.lineTo(size.width * 1.0, size.height * 0.85);
    path_0.quadraticBezierTo(
        size.width * 0.6, size.height * 1.2, 0, size.height * 1.0);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 170, 42, 228)
      ..color = const Color.fromARGB(255, 163, 156, 253)
      ..color = const Color.fromARGB(255, 210, 143, 242)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 170, 42, 228)
      ..color = const Color.fromARGB(255, 163, 156, 253)
      ..color = const Color.fromARGB(255, 210, 143, 242)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();

    path_0.lineTo(0, size.height); // first point
    path_0.quadraticBezierTo(size.width / 2, size.height * 0.8, size.width,
        size.height); //middle + last point
    path_0.lineTo(size.width, 0);

    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 170, 42, 228)
      ..color = const Color.fromARGB(255, 163, 156, 253)
      ..color = const Color.fromARGB(255, 210, 143, 242)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
