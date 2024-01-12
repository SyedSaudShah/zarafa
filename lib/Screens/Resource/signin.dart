import 'package:flutter/gestures.dart';
import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Screens/Resource/customcard.dart';
import '../../Export/export.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController signinController = TextEditingController();
  TextEditingController signinPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(20)),
                  Center(
                    child: Image.asset('assets/images/signin.png',
                        height: screenheight * 0.2
                        // constraints.maxHeight *
                        //     0.2, // Adjust the height as needed
                        ),
                  ),
                  //  SizedBox(height: screenheight * 0.12),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenheight * 0.02),
                  const Text('Login in to your account'),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: CustomCard(
                            title: 'Advertiser',
                            // message: 'message',
                            cardColor: Color.fromARGB(255, 255, 255,
                                255), // Set the color for the first card
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomCard(
                          title: 'Agency',
                          // message: 'message',
                          cardColor: Color.fromARGB(255, 245, 245,
                              246), // Set the color for the second card
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenheight * 0.08,
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.email),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your email address';
                        }
                        return null;
                      },
                      labelText: 'Email or Phone number',
                      controller: signinPasswordController,
                    ),
                  ),
                  // const SizedBox(height: 20),
                  SizedBox(
                    height: screenheight * 0.08,
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.lock),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your valid password';
                        }
                        return null;
                      },
                      labelText: 'Password',
                      controller: signinController,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text('Remember me',
                              style: TextStyle(color: Colors.black)),
                          SizedBox(width: 8),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RoutesName.forgetPassword);
                        },
                        child: const Text('Forgot Password?',
                            style: TextStyle(
                                color: Colors.purple,
                                decoration: TextDecoration.underline)),
                      )
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(
                      //         context, RoutesName.forgetPassword);
                      //   },
                      //   child: const Text(
                      //     'Forgot password?',
                      //     style: TextStyle(
                      //       color: Color.fromARGB(255, 181, 64, 230),
                      //       decoration: TextDecoration.underline,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  MyContainer(
                    title: 'Sign in',
                    onTap: () {},
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Have not account?',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Sign up',
                              style: const TextStyle(
                                color: Color.fromARGB(255, 181, 64, 230),
                                fontSize: 18,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // navigate to desired screen
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'or sign in with',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/facebook.png',
                          height: screenheight * 0.05,
                          width: screenWidth * 0.2,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/google.png',
                          height: screenheight * 0.05,
                          width: screenWidth * 0.2,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/apple.png',
                          height: screenheight * 0.05,
                          width: screenWidth * 0.2,
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
