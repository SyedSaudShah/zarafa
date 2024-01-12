import '../../Export/export.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height * 0.9)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.8,
          size.width * 0.5, size.height * 0.9)
      ..quadraticBezierTo(
          size.width * 0.75, size.height, size.width, size.height * 0.9)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 10);
    path.quadraticBezierTo(width - 40, height + 20, width + 90, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
