import 'package:flutter/material.dart';

class CustomCardMoney extends StatelessWidget {
  final String title;
  final String description;

  const CustomCardMoney({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
          horizontal: 8, vertical: 6), // Adjust sides gap
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center text horizontally
            children: [
              Text.rich(TextSpan(
                text: title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
                // Center text within the column
              )),
              // Text(
              //   title,

              // ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Center text within the column
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////jdsbjhbjhbjhcbjcbsjbc
class CustomCardCo extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String description;

  const CustomCardCo({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
            child: Row(
              children: [
                Image(
                  image: image,
                  width: double.infinity,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
