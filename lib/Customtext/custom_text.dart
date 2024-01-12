import '../Export/export.dart';

class CustomTextForScreen extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double padding;
  const CustomTextForScreen(
      {super.key,
      required this.text,
      required this.onPressed,
      this.padding = 16.0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          //  color: Colors.blue,
          borderRadius: BorderRadius.circular(padding),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
