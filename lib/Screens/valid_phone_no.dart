import 'package:flutter/gestures.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Export/export.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PhoneInputScreenState createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  String phoneNumber = '';
  bool isCountrySelected = false;
  String initialCountry = 'Js';
  TextEditingController phoneNumberController = TextEditingController();
  FocusNode phoneNumberFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/phone.png'),
                SizedBox(
                  height: screenheight * 0.1,
                ),
                const Center(
                    child: Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Please enter your valid phone number. We will send you a 4-digit code to verify your account.',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16, // Adjust the font size as needed
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: screenheight * 0.09,
                        //  height: screenheight > 600 ? 600 : screenheight,
                        width: screenWidth > 600 ? 600 : screenWidth,
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: IntlPhoneField(
                                  controller: phoneNumberController,
                                  decoration: const InputDecoration(
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 198, 198, 198)),
                                    labelText: 'Phone number',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                  initialCountryCode: initialCountry,
                                  onChanged: (phone) {
                                    setState(() {
                                      phoneNumber = phone.completeNumber;
                                      isCountrySelected = true;
                                    });
                                  },
                                  focusNode: phoneNumberFocusNode,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenheight * 0.02,
                ),
                MyContainer(
                  title: 'Send Code',
                  onTap: () {
                    if (phoneNumber.isNotEmpty) {
                      Navigator.pushNamed(context, RoutesName.verifactionOtpp);
                      // handleButtonClick();
                    } else {
                      // Show an error message or perform any other action
                      const Text('Please enter a valid phone number.');
                    }

                    // handleButtonClick();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Login',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 169, 32, 226),
                                  fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    RoutesName.signin,
                                    (route) => false,
                                  );
                                  // navigate to desired screen
                                })
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDropdownItem(Country country) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(width: 8.0),
          Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      ),
    );
  }

  void handleButtonClick() {
    if (isCountrySelected && phoneNumberFocusNode.hasFocus) {
      // Handle button press, you can access the phone number using the 'phoneNumber' variable
      print('Selected Phone Number: $phoneNumber');

      // Add your additional logic here

      // Cancel the keyboard
      FocusScope.of(context).requestFocus(FocusNode());
    }
  }
}
