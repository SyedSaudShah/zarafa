import 'package:zarafa/Export/export.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key, required this.title, required this.onTap});

  final String title;
  final Function()? onTap;
  @override
  // ignore: library_private_types_in_public_api
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  // ignore: prefer_final_fields
  // bool _clicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 374,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Resource.colors.amberColors,
        ),
        child: Center(
            child: Text(
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          widget.title,
        )),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;

  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Set the button shape
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CustomNextBtn extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomNextBtn({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _customNextBtnState createState() => _customNextBtnState();
}

class _customNextBtnState extends State<CustomNextBtn> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isTapped = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isTapped = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isTapped = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(225, 157, 0, 222),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          // color: const Color.fromARGB(225, 157, 0, 222),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}

class LetsStartCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LetsStartCustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity, // Take up the full width
        child: Material(
          color: const Color.fromARGB(225, 157, 0, 222),
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
