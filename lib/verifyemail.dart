import 'dart:async';

import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Export/export.dart';
import 'package:zarafa/Screens/Resource/wiget.dart';

class VerifactionOtpp extends StatefulWidget {
  const VerifactionOtpp({Key? key}) : super(key: key);

  @override
  State<VerifactionOtpp> createState() => _VerifactionOtppState();
}

class _VerifactionOtppState extends State<VerifactionOtpp> {
  bool invalidOtp = false;
  int resendTime = 60;
  late Timer countdownTimer;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  String strFormatting(n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('assets/images/verifaction.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Verify your email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Enter the four digits code that you receive on your +96278 9656 9089 ',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myInputBox(context, txt1),
                      myInputBox(context, txt2),
                      myInputBox(context, txt3),
                      myInputBox(context, txt4),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    child: MyContainer(
                      title: 'Done',
                      onTap: () {
                        final otp =
                            txt1.text + txt2.text + txt3.text + txt4.text;
                        if (otp == '1111') {
                          // Go to welcome
                          stopTimer();
                          Navigator.pushNamed(
                              context, RoutesName.termscondiction);
                        } else {
                          setState(() {
                            invalidOtp = true;
                          });
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      resendTime == 0
                          ? InkWell(
                              onTap: () {
                                // Resend OTP Code
                                invalidOtp = false;
                                resendTime = 60;
                                startTimer();
                              },
                              child: const Text(
                                'Have not received?Send again',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 181, 64, 230),
                                  fontSize: 18,
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 10),
                  resendTime != 0
                      ? Text(
                          'Have not received?, ${strFormatting(resendTime)} second(s)',
                          style: const TextStyle(fontSize: 18),
                        )
                      : const SizedBox(),
                  const SizedBox(height: 5),
                  Text(
                    invalidOtp ? 'Invalid otp!' : '',
                    style: const TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
