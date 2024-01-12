import 'package:flutter/gestures.dart';
// Import MaterialApp and other widgets which you may be using.
import 'package:zarafa/Export/export.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;

  void _submit() {
    if (!isChecked) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please agree to the Terms & Conditions'),
        ),
      );
      return;
    }

    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    String name = nameController.text;
    String lastName = lastNameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    // Your form submission logic here
    // ...

    'name:${name}'
        'lastName:${lastName}'
        'email:${email}'
        'password:${password}';
  }

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Form(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(20)),
                  Center(
                    child: Image.asset(
                      'assets/images/signup.png',
                      height: screenheight * 0.20,
                    ),
                  ),
                  SizedBox(height: screenheight * 0.04),
                  const Text(
                    'Create Zarafa Account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
             const     SizedBox(
                    height: 10,
                  ),
                  // input user name and last name
                  SizedBox(
                    height: screenheight * 0.08,
                    // width: screenWidth > 600 ? 600 : screenWidth,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: screenheight * 0.08,
                            child: CustomTextField(
                              prefixIcon: const Icon(Icons.person),
                              controller: nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter your name';
                                }
                                return null;
                              },
                              labelText: 'First Name',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.04,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: screenheight * 0.08,
                            child: CustomTextField(
                              prefixIcon: const Icon(Icons.person),
                              controller: lastNameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter your last name';
                                }
                                return null;
                              },
                              labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // input user email
                  SizedBox(
                    //height: screenheight > 600 ? 600 : screenheight,
                    height: screenheight * 0.08,
                    width: screenWidth > 600 ? 600 : screenWidth,
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.email),
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your email';
                        }
                        return null;
                      },
                      labelText: 'Email',
                    ),
                  ),

                  // input user password
                  SizedBox(
                    height: screenheight * 0.08,
                    //  height: screenheight > 600 ? 600 : screenheight,
                    width: screenWidth > 600 ? 600 : screenWidth,
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.lock),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your password';
                        }
                        return null;
                      },
                      labelText: 'Password',
                      controller: passwordController,
                    ),
                  ),
                  // confirm password
                  CustomTextField(
                    prefixIcon: const Icon(Icons.lock),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Confirm password';
                      } else if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    labelText: 'Confirm Password',
                    controller: confirmPasswordController,
                  ),
                  //   SizedBox(height: screenheight * 0.02),
                  // terms and conditions checkbox
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'I agree to ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: const TextStyle(
                                    color: Color.fromARGB(
                                      255,
                                      169,
                                      32,
                                      226,
                                    ),
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigate to Privacy Policy
                                    },
                                ),
                                const TextSpan(
                                  text: ' and ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'Terms & Conditions',
                                  style: const TextStyle(
                                    color: Color.fromARGB(
                                      255,
                                      169,
                                      32,
                                      226,
                                    ),
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigate to Terms & Conditions
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // error message if terms not agreed
                  if (!isChecked)
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Please agree to the Terms & Conditions',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  const SizedBox(height: 10),
                  // sign up button
                  SizedBox(
                    //  height: screenheight > 600 ? 600 : screenheight,
                    width: screenWidth > 600 ? 600 : screenWidth,
                    child: MyContainer(
                      title: 'Sign Up'.toUpperCase(),
                      onTap: () {
                        isChecked;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PhoneInputScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  // social signup buttons
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        const Text(
                          'or Signup with',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        // Add your social signup buttons here
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
