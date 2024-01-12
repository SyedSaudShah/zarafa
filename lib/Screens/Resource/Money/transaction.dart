import 'package:zarafa/Customtext/custom_text.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';

import '../../../Export/export.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double clipperHeight = screenHeight * 0.2;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        text: 'Transaction',
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 10,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // CustomTextForScreen for Month
                CustomTextForScreen(
                  text: 'November 2022',
                  onPressed: () {},
                ),

                // SizedBox for spacing
                SizedBox(
                  width: screenWidth * 0.2, // Adjust the spacing as needed
                ),

                // Column for amount
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // CustomTextForScreen for Amount
                    CustomTextForScreen(
                      text: 'total spent',
                      onPressed: () {},
                    ),
                    // CustomTextForScreen for total spent
                    CustomTextForScreen(
                      text: 'JOD 120',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    CustomTextForScreen(
                      text: 'Today',
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First row with an icon and two text widgets
                Row(
                  children: [
                    Card(
                      elevation: 4,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: const Icon(
                          Icons.arrow_outward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                        width:
                            8), // Add some spacing between the icon and the first text
                    CustomTextForScreen(
                      text: 'Silver Packages Subscription',
                      onPressed: () {},
                    ),
                    SizedBox(
                        width:
                            8), // Add some spacing between the first and second text
                    Expanded(
                      child: CustomTextForScreen(
                        text: '-JOD 100',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 200),
                  child: Column(
                    children: [
                      CustomTextForScreen(
                        text: 'Zarafa',
                        onPressed: () {},
                      ),
                      // Add some spacing between the texts
                      CustomTextForScreen(
                        text: '04:23',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Card(
                      elevation: 4,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: const Icon(
                          Icons.arrow_outward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                        width:
                            8), // Add some spacing between the icon and the first text
                    CustomTextForScreen(
                      text: 'Window',
                      onPressed: () {},
                    ),
                    SizedBox(
                        width:
                            8), // Add some spacing between the first and second text
                    Expanded(
                      child: CustomTextForScreen(
                        text: '-JOD 20',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 200),
                  child: Column(
                    children: [
                      CustomTextForScreen(
                        text: 'Zarafa',
                        onPressed: () {},
                      ),
                      // Add some spacing between the texts
                      CustomTextForScreen(
                        text: '04:23',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Card(
                      elevation: 4,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(),
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: const Icon(
                          Icons.arrow_outward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),

                    CustomTextForScreen(
                      text: 'Wallet top up',
                      onPressed: () {},
                    ),
                    SizedBox(
                        width:
                            8), // Add some spacing between the first and second text
                    Expanded(
                      child: CustomTextForScreen(
                        text: '+JOD 20',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 200),
                  child: Column(
                    children: [
                      CustomTextForScreen(
                        text: 'Zarafa',
                        onPressed: () {},
                      ),
                      // Add some spacing between the texts
                      CustomTextForScreen(
                        text: '04:23',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                // Second row with two text widgets
              ],
            ),
          ]),

          // Padding(
          //   padding: EdgeInsets.all(00),
          //   child: Padding(
          //     padding: EdgeInsets.all(12),
          //     child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(children: [
          //             Card(
          //               elevation: 4,
          //               child: Container(
          //                 decoration: const BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   color: Colors.green,
          //                 ),
          //                 child: const Icon(
          //                   Icons.arrow_outward,
          //                   color: Colors
          //                       .white, // Set the color of the arrow icon to white
          //                 ),
          //               ),
          //             ),
          //             CustomTextForScreen(
          //               text: 'Silver Packages Subscription',
          //               onPressed: () {},
          //             ),
          //             Expanded(
          //               child: CustomTextForScreen(
          //                 text: '-JOD 100',
          //                 onPressed: () {},
          //               ),
          //             ),
          //           ]),
          //           CustomTextForScreen(
          //             text: 'Zarafa',
          //             onPressed: () {},
          //           ),
          //           CustomTextForScreen(
          //             text: '04:23',
          //             onPressed: () {},
          //           )
          //         ]),
          //   ),
          // ),
        ),
      ),
    );
  }
}
