import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Screens/Resource/customcard.dart';
import '../../Export/export.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController textEditingController = TextEditingController();
  bool showAdditionalContent = false;

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                textAlign: TextAlign.center,
                'Check Your Phone',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                textAlign: TextAlign.center,
                'We have send password recovery instruction to your Phone Done',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              MyContainer(
                title: 'Done',
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.forgetverification);
                },
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/images/forget.png',
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Forget Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Select which contact details should we use to reset your password',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Expanded(
                            child: CustomCard(
                              title: 'title',
                              cardColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: CustomCard(
                              title: 'title',
                              cardColor: Color.fromARGB(255, 245, 245, 246),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      MyContainer(
                        title: 'Continue',
                        onTap: () {
                          setState(() {
                            showAdditionalContent = true;
                          });
                          _showBottomSheet();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
