import 'package:zarafa/Controller/Routes/routes_method.dart';

import '../../Export/export.dart';

class ActivateScreen extends StatelessWidget {
  const ActivateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenwidth,
                  child: Image.asset(
                    'assets/images/notification.png',
                    height: screenheight * .5,
                    width: screenwidth,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: screenheight * 0.04),
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Receive alert and report wheever you need',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Activate notification to have your entire advertising strategy always under control',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenheight * 0.04),
                LetsStartCustomButton(
                  text: 'Let' 's' ' Start',
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.homeScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
