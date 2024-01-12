// Import statements...

import '../../Controller/Routes/routes_method.dart';
import '../../Export/export.dart';

class Creatnewaccount extends StatelessWidget {
  const Creatnewaccount({Key? key}) : super(key: key);

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
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/ss.png',
                  height: screenheight * .5,
                  width: screenwidth,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: screenheight * 0.04),
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Create new account & campaigns in a few Taps',
                    textAlign: TextAlign.center,
                  ),
                ),
                const Center(
                  child: Text(
                    'Your KPI’s under control with us alerts & Charts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
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
                        Navigator.pushNamed(context, RoutesName.businessGrow);
                      },
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, RoutesName.businessGrow);
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.purple,
                    //   ),
                    //   child: const Text('Next'),
                    // ),
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
