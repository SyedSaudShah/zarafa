import '../../../../Export/export.dart';

class CustomCardUpgrade extends StatelessWidget {
  final double elevation;
  final double height;
  final double width;
  final String title;
  final String subTitle;
  final String price;
  final String buttonText;
  final Color backgroundColor;

  const CustomCardUpgrade({
    Key? key,
    this.elevation = 4,
    required this.height,
    required this.width,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.buttonText,
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
              const Padding(
                padding: EdgeInsets.only(top: 4, left: 3, right: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.info_outline_rounded),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(7)),
              Text(title),
              const Padding(padding: EdgeInsets.all(5)),
              RichText(
                text: TextSpan(
                  text: subTitle,
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: '',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(7)),
              Text(price),
              const Padding(padding: EdgeInsets.all(7)),
              // CustomNextBtn(
              //   text: buttonText,
              //   onPressed: onPressed,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
