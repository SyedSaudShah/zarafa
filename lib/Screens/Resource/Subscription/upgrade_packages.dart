import 'package:zarafa/Customtext/custom_text.dart';
import 'package:zarafa/Screens/Resource/Subscription/card/slider/slider.dart';
import 'package:zarafa/Screens/Resource/Subscription/card/upgrade_packages.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';

import '../../../Export/export.dart';

// ignore: camel_case_types
class Upgrade_Packages extends StatefulWidget {
  const Upgrade_Packages({super.key});

  @override
  State<Upgrade_Packages> createState() => _Upgrade_PackagesState();
}

// ignore: camel_case_types
class _Upgrade_PackagesState extends State<Upgrade_Packages> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    double clipperHeight =
        screenHeight * 0.2; // Set clipper height to 10% of screen height
    //int _currentIndex = 0; //for botm bar
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
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
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Add your back button functionality here
                      },
                    ),
                    Expanded(
                      child: Center(
                        child: CustomTextButton(
                          text: 'Upgrade Packages',
                          onPressed: () {
                            // Add your button functionality here
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])),
        const DefaultTabController(
          length: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 16.0), // Adjust the padding as needed
            child: TabBar(
              labelColor: Colors.purple,
              tabs: [
                Tab(
                  child: Text('Start Up'),
                ),
                Tab(
                  child: Text('GroeBig'),
                ),
                Tab(
                  child: Text('GoGreek'),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            CustomTextForScreen(
              text: 'Duration',
              onPressed: () {},
            ),
            //  Text('Start Text'),
            const Spacer(), // Add this line for spacing
            CustomTextForScreen(
              text: '6 Months',
              onPressed: () {},
            ),
          ],
        ),
        const MySlider(),
        SizedBox(
          height: screenHeight * 0.044,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Expanded(
                child: CustomCardUpgrade(
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.4,
                    title: 'Monthly',
                    subTitle: '20JOD/Year',
                    price: 'Cancle anytime no fee',
                    buttonText: 'buttonText')),
            Expanded(
                child: CustomCardUpgrade(
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.4,
                    title: 'Annual,paid monthly',
                    subTitle: '20JOD/Year',
                    price: 'free applies if you \n cancle after 14 days.',
                    buttonText: 'buttonText')),
          ]),
        ),
        CustomCardUpgrade(
            height: screenHeight * 0.3,
            width: MediaQuery.of(context).size.width * 0.8, // Adjust as needed

            title: 'Annual,Prepaid',
            subTitle: '20JOD/Year',
            price: 'No refund if you cancle after 14 days',
            buttonText: 'buttonText'),
        SizedBox(
          height: screenHeight * 0.022,
        ),
        LetsStartCustomButton(
          text: 'Proceed',
          onPressed: () {},
        ),
        SizedBox(
          height: screenHeight * 0.1,
        )
      ]),
    ));
  }
}
