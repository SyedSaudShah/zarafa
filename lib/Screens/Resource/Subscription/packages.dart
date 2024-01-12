import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Customtext/custom_text.dart';
import 'package:zarafa/Screens/Resource/Subscription/card/packages_customcard.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';

import '../../../Export/export.dart';

class MyPackages extends StatefulWidget {
  const MyPackages({super.key});

  @override
  State<MyPackages> createState() => _MyPackagesState();
}

class _MyPackagesState extends State<MyPackages> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
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
            Center(
              child: Expanded(
                child: CustomTextButton(
                  text: 'Subscription',
                  onPressed: () {},
                ),
              ),
            )
          ])),
      Row(
        children: [
          Expanded(
            child: SizedBox(
              width: screenWidth * 0.01,
              child: CustomTextForScreen(
                text: 'Membership',
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(width: screenWidth * 0.064),
          const CustomTextButtonPlans()
        ],
      ),
      SizedBox(
        height: screenHeight * 0.030,
      ),
      const Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
            child: CustomThreeColorCard(
                color1: Colors.purple,
                color2: Color.fromARGB(255, 132, 62, 175),
                color3: Color.fromARGB(255, 126, 119, 164),
                title1: 'Basic',
                title2: 'Trail 28 Days Remaining',
                icon3: Icons.check_circle,
                title3: 'Free')),
      ),
      SingleChildScrollView(
          child: Row(
        children: [
          Expanded(
            child: CustomCard(
              height: screenHeight * 0.27,
              width: screenWidth * 0.2,
              title: '12 Month',
              subTitle: 'Sliver',
              price: '20JOD/Month',
              buttonText: 'Most Popular',
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: screenWidth * 0.02, // Adjust the spacing as needed
          ),
          Expanded(
            child: CustomCard(
              height: screenHeight * 0.27,
              width: screenWidth * 0.2,
              title: '12 Month',
              subTitle: 'Gold',
              price: '20JOD/Month',
              buttonText: 'Best Value',
              onPressed: () {},
            ),
          ),
        ],
      )),
      SizedBox(height: screenHeight * 0.054342),
      LetsStartCustomButton(
        text: 'Upgrade Now',
        onPressed: () {
          Navigator.popAndPushNamed(context, RoutesName.upgardepackages);
        },
      )
    ]));
  }
}
