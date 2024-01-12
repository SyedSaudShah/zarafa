import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Color cardColor; // Color parameter

  const CustomCard({
    required this.title,
    required this.cardColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      // width: 40,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: cardColor, // Set the color here
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle, // Set the shape to a box
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class Namecontainer extends StatelessWidget {
  final Color cardColor;
  const Namecontainer({super.key, required this.cardColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(100)
            //more than 50% of width makes circle
            ),
      ),
    );
  }
}
