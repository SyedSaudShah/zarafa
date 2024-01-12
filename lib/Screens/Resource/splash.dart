import 'package:flutter/material.dart';
import 'package:zarafa/Controller/Routes/routes_method.dart';
import '../../Export/export.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({Key? key}) : super(key: key);

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
                  'assets/images/grop.png',
                  height: screenheight * .5,
                  width: screenwidth,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: screenheight * 0.04),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      'Advertising platform-all in one place',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Rediscover the way you manage your advertising strategies',
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
                        Navigator.pushNamed(
                            context, RoutesName.creatnewaccount);
                      },
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //         context, RoutesName.creatnewaccount);
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.purple,
                    //   ),
                    //   child: const Text(
                    //     'Next',
                    //     style: TextStyle(color: Colors.white),
                    //   ),
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
