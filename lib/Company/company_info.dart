import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';
import 'package:zarafa/eidt_profile/eidt_Screen.dart';

import '../Export/export.dart';

class CompanyInfo extends StatefulWidget {
  const CompanyInfo({super.key});

  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  String phoneNumber = '';
  bool isCountrySelected = false;
  String initialCountry = 'Js';
  TextEditingController phoneNumberController = TextEditingController();
  FocusNode phoneNumberFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController commercialController = TextEditingController();
    TextEditingController brandController = TextEditingController();
    TextEditingController companyController = TextEditingController();

    // ignore: non_constant_identifier_names
    TextEditingController BarandDescriptionController = TextEditingController();
    var screenheight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
            height: screenheight * 0.2,
            child: Stack(children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 174, 54, 230),
                        Color.fromARGB(255, 204, 152, 244),
                        Color.fromARGB(255, 172, 153, 251),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EidtProfileScreen(),
                            ));
                      },
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: Colors.white,
                    ),
                    SizedBox(width: screenWidth * 0.1),
                    Center(
                      child: Text(
                        'Company Informaction',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth > 600 ? 24 : 20,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.16),
                  ],
                ),
              ),
            ])),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: screenWidth > 600 ? 30.0 : 15.0),
          child: Column(children: [
            SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Form(
                  child: Column(
                children: [
                  SizedBox(
                    height: screenheight * 0.017,
                  ),
                  Image.asset(
                    'assets/images/camp.png',
                    height: screenheight * 0.09993221,
                  ),
                  SizedBox(
                    height: screenheight * 0.017,
                  ),
                  SizedBox(
                    height: screenheight * 0.08,
                    //  width: screenWidth > 600 ? 600 : screenWidth,
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.email),
                      controller: commercialController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your Commercial Name';
                        }
                        return null;
                      },
                      labelText: ' Commercial Name',
                    ),
                  ),
                  SizedBox(
                    height: screenheight * 0.017,
                  ),
                  SizedBox(
                    height: screenheight * 0.08,
                    // width: screenWidth > 600 ? 600 : screenWidth,
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.lock),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your Company Email';
                        }
                        return null;
                      },
                      labelText: ' Company Emai',
                      controller: companyController,
                    ),
                  ),
                  SizedBox(
                    height: screenheight * 0.017,
                  ),
                  SizedBox(
                    height: screenheight * 0.08,
                    // width: screenWidth > 600 ? 600 : screenWidth,
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.lock),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your Company Email';
                        }
                        return null;
                      },
                      labelText: ' Brand Name',
                      controller: brandController,
                    ),
                  ),
                  SizedBox(
                    height: screenheight * 0.017,
                  ),
                  IntlPhoneField(
                    controller: phoneNumberController,
                    decoration: const InputDecoration(
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 198, 198, 198)),
                      labelText: 'Phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  // SizedBox(
                  //   height: screenheight * 0.017,
                  // ),
                  SizedBox(
                      height: screenheight * 0.08,
                      child: TextField(
                        controller: BarandDescriptionController,
                        maxLines:
                            null, // You can adjust the number of lines as needed
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          hintText: 'Enter your description here',
                          border: OutlineInputBorder(),
                        ),
                      )),
                  SizedBox(
                    height: screenheight * 0.017,
                  ),
                  LetsStartCustomButton(
                    text: 'Confirm',
                    onPressed: () {},
                  )
                ],
              )),
            ),
          ]),
        )
      ]),
    )));
  }
}
