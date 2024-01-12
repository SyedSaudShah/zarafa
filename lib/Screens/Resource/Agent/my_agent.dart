import 'package:zarafa/Screens/Resource/cliper.dart';

import '../../../Export/export.dart';

class MyAgent extends StatefulWidget {
  const MyAgent({super.key});

  @override
  State<MyAgent> createState() => _MyAgentState();
}

class _MyAgentState extends State<MyAgent> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    //  double screenWidth = MediaQuery.of(context).size.height;
    double clipperHeight =
        screenHeight * 0.2; // Set clipper height to 10% of screen height
    //int _currentIndex = 0; //for botm bar
    return Scaffold(
        body: Column(children: [
      SizedBox(
          height: clipperHeight,
          child: Stack(children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 174, 54, 230),
                  Color.fromARGB(255, 204, 152, 244),
                  Color.fromARGB(255, 172, 153, 251),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
            ),
          ]))
    ]));
  }
}
