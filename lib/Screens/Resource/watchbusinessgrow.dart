import 'package:zarafa/Controller/Routes/routes_method.dart';
import '../../Export/export.dart';

class BusinessGrow extends StatelessWidget {
  const BusinessGrow({Key? key}) : super(key: key);

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
                Image.asset(
                  'assets/images/annual.png',
                  height: screenheight * .5,
                  width: screenwidth,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: screenheight * 0.04),
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Watch your business grow at your fingertips',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Optimize your performance with tips & insights',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenheight * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    CustomNextBtn(
                      text: 'Next',
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.activateScreen);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
