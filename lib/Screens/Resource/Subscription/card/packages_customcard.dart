import '../../../../Export/export.dart';

class CustomThreeColorCard extends StatelessWidget {
  const CustomThreeColorCard({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.title1,
    required this.title2,
    required this.icon3,
    required this.title3,
  });

  final Color color1;
  final Color color2;
  final Color color3;
  final String title1;
  final String title2;
  final String title3;
  final IconData icon3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLastRow(title1, title2, title3, icon3),
        ],
      ),
    );
  }

  Widget _buildLastRow(String title1, String title2, title3, IconData icon) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24.0,
                ),
                const SizedBox(width: 8.0),
                Text(
                  title3,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class CustomTextButtonPlans extends StatelessWidget {
  const CustomTextButtonPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle button tap
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.purple, // Purple bottom line color
              width: 1.0,
            ),
          ),
        ),
        child: const Text(
          'Compare All Plans',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.purple, // Text color
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final double elevation;
  final double height;
  final double width;
  final String title;
  final String subTitle;
  final String price;
  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const CustomCard({
    Key? key,
    this.elevation = 4,
    required this.height,
    required this.width,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor = Colors.purple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: backgroundColor)),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white38),
          height: height,
          width: width,
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(12)),
              Text(title),
              const Padding(padding: EdgeInsets.all(12)),
              Text(subTitle),
              const Padding(padding: EdgeInsets.all(12)),
              Text(price),
              const Padding(padding: EdgeInsets.all(12)),
              CustomNextBtn(
                text: buttonText,
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNextBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomNextBtn({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 110,
        padding: const EdgeInsets.all(2),
        color: Colors.purple, // Set the color you desire
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white, // Set the text color you desire
            ),
          ),
        ),
      ),
    );
  }
}
