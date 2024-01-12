import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Customtext/custom_text.dart';

import '../../../../Export/export.dart';
import '../../cliper.dart';

class Moneydetails extends StatefulWidget {
  const Moneydetails({super.key});

  @override
  State<Moneydetails> createState() => _MoneydetailsState();
}

class _MoneydetailsState extends State<Moneydetails> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double clipperHeight = screenHeight * 0.2;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: clipperHeight,
          child: Stack(
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 174, 54, 230),
                        Color.fromARGB(255, 204, 152, 244),
                        Color.fromARGB(255, 172, 153, 251),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Center(
                child: Positioned(
                  bottom: 0,
                  left: 150,
                  right: 30,
                  top: 0,
                  child: CustomTextButton(
                    text: 'Details',
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                  top: 50,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.transaction);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.05,
        ),
        Card(
          color: Colors.purple,
          elevation: 4,
          child: Container(
            height: screenHeight * 0.2,
            width: screenWidth * 0.9,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomTextForScreen(
                      text: 'jdsbnmxjmdc',
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: screenWidth * 0.3,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                          height: screenHeight * 0.10,
                          width: screenWidth * 0.12,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/annual.png'))),
                        ))
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 11),
                    child: Text('2212hgchggh22bhgh2b2n2bb2b3n2nf')),
                const Padding(
                    padding: EdgeInsets.only(left: 11),
                    child: Text('2212hgchggh22bhgh2b2n2bb2b3n2nf'))
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.08,
        ),
        Card(
          elevation: 4,
          child: Container(
            height: screenHeight * 0.14,
            width: screenWidth * 0.9,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomTextForScreen(
                      text: 'jdsbnmxjmdc',
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: screenWidth * 0.3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: CustomNextBtn(
                        text: 'Copy',
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 11),
                    child: Text('2212hgchggh22bhgh2b2n2bb2b3n2nf'))
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          child: Container(
            height: screenHeight * 0.1,
            width: screenWidth * 0.9,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Row(
              children: [
                CustomTextForScreen(
                  text: 'Paid by apple pay',
                  onPressed: () {},
                ),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                CustomTextForScreen(
                  text: '-JOD 100',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 4,
          child: Container(
            height: screenHeight * 0.1,
            width: screenWidth * 0.9,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Row(
              children: [
                CustomTextForScreen(
                  text: 'Note',
                  onPressed: () {},
                ),
                SizedBox(
                  width: screenWidth * 0.4,
                ),
                const Text(
                  'Add note',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
