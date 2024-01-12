import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Export/export.dart';

class ResetpasswordScreen extends StatefulWidget {
  const ResetpasswordScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ResetpasswordScreenState createState() => _ResetpasswordScreenState();
}

class _ResetpasswordScreenState extends State<ResetpasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController conformpasswordController =
      TextEditingController();

  bool isPasswordValid = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/reset.png',
                height: screenheight * 0.5,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Reset  Password:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Text(
                  'Set the new password for your account so you can login and access all the features'),
              SizedBox(height: screenheight * 0.02),
              SizedBox(
                height: screenheight * 0.08,
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
              const SizedBox(height: 10),
              SizedBox(
                height: screenheight * 0.08,
                child: CustomTextField(
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
                  controller: conformpasswordController,
                ),
              ),
              const SizedBox(height: 20),
              MyContainer(
                title: 'Done',
                onTap: () {
                  setState(() {
                    // Validate fields and update isPasswordValid flag
                    isPasswordValid = _validateFields();
                  });

                  if (isPasswordValid) {
                    // Perform reset password logic
                    // Show Bottom Sheet
                    _scaffoldKey.currentState?.showBottomSheet(
                      (context) => const BottomNavigationSheet(),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isValidPassword(String password) {
    // Add your password validation logic here
    return password.isNotEmpty && password.length >= 6;
  }

  bool _validateFields() {
    return passwordController.text.isNotEmpty &&
        conformpasswordController.text.isNotEmpty &&
        passwordController.text == conformpasswordController.text;
  }
}

class BottomNavigationSheet extends StatelessWidget {
  const BottomNavigationSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            color: const Color.fromARGB(255, 181, 64, 230),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 100,
                  ),
                ],
              ),
            ),
          ),
          const Column(children: [
            SizedBox(height: 16),
            Text(
              'Congratulations!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Your account is ready to use. You will be redirected to the home page.Done',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ]),
          const SizedBox(height: 16),
          MyContainer(
            title: 'Done',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.myCustomAppBar);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const MyCustomAppBar(),
              //     ));
            },
          )
        ],
      ),
    );
  }
}
