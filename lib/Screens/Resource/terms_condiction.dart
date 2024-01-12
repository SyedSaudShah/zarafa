import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Export/export.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';

class TermsCondictions extends StatelessWidget {
  const TermsCondictions({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Term & Condition',),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
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
                            end: Alignment.bottomCenter)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        ' Terms and Conditions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                        softWrap:
                            false, // Set softWrap to false to force single line
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            'Zarafa Terms and Conditions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            softWrap:
                                false, // Set softWrap to false to force single line
                          ),
                        ),
                      ),
                    ),
                    //const SizedBox(height: 16),
                    const SizedBox(height: 16),
                    ListTile(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 6.0), // Adjust top padding as needed
                            child: Icon(
                              Icons.fiber_manual_record,
                              size: 15,
                            ),
                          ),
                          const SizedBox(
                              width: 8), // Adjust the width as needed
                          Expanded(
                            child: Text(
                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: screenWidth < 600 ? 16 : 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Add additional widgets with gaps as needed
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FittedBox(
                        child: Text(
                          textAlign: TextAlign.start,
                          'The following are our Terms:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                          softWrap:
                              false, // Set softWrap to false to force single line
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.left,
                      '1.like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                      style: TextStyle(
                        fontSize: screenWidth < 600
                            ? 16
                            : 20, // Adjust font size based on screen width
                      ),
                    ),
                    //const SizedBox(height: 16),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.left,
                      '2.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here making it look.',
                      style: TextStyle(
                        fontSize: screenWidth < 600
                            ? 16
                            : 20, // Adjust font size based on screen width
                      ),
                    ),
                    const SizedBox(height: 16),
                    MyContainer(
                      title: 'Agree & Continue',
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.privacy);
                      },
                    ),
                    const SizedBox(height: 16),
                    MyContainer(
                      title: 'Cancle',
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
