import 'dart:io';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:zarafa/Company/company_Info.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';

import '../Export/export.dart';

class EidtProfileScreen extends StatefulWidget {
  const EidtProfileScreen({Key? key}) : super(key: key);

  @override
  State<EidtProfileScreen> createState() => _EidtProfileScreenState();
}

class _EidtProfileScreenState extends State<EidtProfileScreen> {
  String phoneNumber = '';
  bool isCountrySelected = false;
  String initialCountry = 'Js';
  TextEditingController phoneNumberController = TextEditingController();
  FocusNode phoneNumberFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  late File image =
      File('default_image_path'); // Initialize with a default image path
  final picker = ImagePicker();

  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }

  Future showOptions() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Photo Gallery'),
            onPressed: () {
              Navigator.of(context).pop();
              getImageFromGallery();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              Navigator.of(context).pop();
              getImageFromCamera();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    TextEditingController nameController = TextEditingController();
    TextEditingController lastnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        //physics: const NeverScrollableScrollPhysics(),
        child: Column(children: [
          SizedBox(
            height: screenheight * 0.2,
            child: Stack(
              children: [
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
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: Colors.white,
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth > 600 ? 24 : 20,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.16),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth > 600 ? 18 : 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth > 600 ? 30.0 : 15.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  //  const Padding(padding: EdgeInsets.all(1)),
                  Stack(
                    children: [
                      Container(
                        height: screenheight * 0.1,
                        width: screenWidth * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          height: screenheight * 0.0882,
                          width: screenWidth * 0.2,
                          child:
                              CircleAvatar(backgroundImage: FileImage(image)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        top: 11,
                        left: 17,
                        right: 0,
                        child: InkWell(
                          onTap: showOptions,
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.purple,
                          ),
                        ),
                      )
                    ],
                  ),

                  //  SizedBox(height: screenheight * 0.01),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: screenheight * 0.08,
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
                              controller: lastnameController,
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
                  Center(
                    child: Row(
                      children: [
                        const Text('ID',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: screenWidth * 0.75,
                        ),
                        const Text(
                          '142342',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.purple,
                          ),
                        )
                      ],
                    ),
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

                  SizedBox(
                    height: screenheight * 0.08,
                    //  width: screenWidth > 600 ? 600 : screenWidth,
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
                          return 'Enter your password';
                        }
                        return null;
                      },
                      labelText: 'Password',
                      controller: passwordController,
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    children: [
                      Card(
                        elevation: 0,
                        child: ListTile(
                          leading: const Icon(
                            Icons.question_mark,
                            color: Colors.purple,
                          ),
                          title: const Text(
                            'Company information',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CompanyInfo(),
                                  ));
                            },
                            icon: const Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: ListTile(
                          leading: Image(
                            image: const AssetImage('assets/images/call.png'),
                            color: Colors.purple,
                            height: screenheight * 0.043,
                          ),
                          title: const Text(
                            'Categories ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                      const Card(
                        elevation: 0,
                        child: ListTile(
                          leading: Icon(
                            Icons.thumb_up,
                            color: Colors.purple,
                          ),
                          title: Text(
                            'Branches',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      const Card(
                        elevation: 0,
                        child: ListTile(
                          leading: Icon(
                            Icons.note_add,
                            color: Colors.purple,
                          ),
                          title: Text(
                            'Legal Documents',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                          ),
                        ),
                      ),
                      // Add more ListTiles as needed
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
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
      ('Selected Phone Number: $phoneNumber');

      // Add your additional logic here

      // Cancel the keyboard
      FocusScope.of(context).requestFocus(FocusNode());
    }
  }
}




// class EditProfileScreen extends StatefulWidget {
//   const EditProfileScreen({Key? key}) : super(key: key);

//   @override
//   State<EditProfileScreen> createState() => _EditProfileScreenState();
// }

// class _EditProfileScreenState extends State<EditProfileScreen> {
//   // ... your existing code

//   @override
//   Widget build(BuildContext context) {
//     var screenheight = MediaQuery.of(context).size.height;
//     var screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: screenheight * 0.2,
//               child: Stack(
//                   // ... your existing code
//                   ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: screenWidth > 600 ? 30.0 : 15.0,
//               ),
//               child: Column(
//                 children: [
//                   const Padding(padding: EdgeInsets.all(20)),
//                   TextButton(
//                     onPressed: showOptions,
//                     child: const Text('Select Image'),
//                   ),
//                   Center(
//                     child: CircleAvatar(
//                       child: Image.file(image),
//                     ),
//                   ),
//                   SizedBox(height: screenheight * 0.01),
//                   const SizedBox(height: 10),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: SizedBox(
//                           height: screenheight * 0.08,
//                           child: CustomTextField(
//                             prefixIcon: const Icon(Icons.person),
//                             controller: nameController,
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Enter your name';
//                               }
//                               return null;
//                             },
//                             labelText: 'First Name',
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: screenWidth * 0.04,
//                       ),
//                       Expanded(
//                         child: SizedBox(
//                           height: screenheight * 0.08,
//                           child: CustomTextField(
//                             prefixIcon: const Icon(Icons.person),
//                             controller: lastnameController,
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Enter your last name';
//                               }
//                               return null;
//                             },
//                             labelText: 'Last Name',
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Center(
//                     child: Row(
//                       children: [
//                         const Text('ID',
//                             style: TextStyle(fontWeight: FontWeight.bold)),
//                         SizedBox(
//                           width: screenWidth * 0.75,
//                         ),
//                         const Text(
//                           '142342',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             color: Colors.purple,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   IntlPhoneField(
//                     controller: phoneNumberController,
//                     decoration: const InputDecoration(
//                       hintStyle:
//                           TextStyle(color: Color.fromARGB(255, 198, 198, 198)),
//                       labelText: 'Phone number',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                     ),
//                     initialCountryCode: initialCountry,
//                     onChanged: (phone) {
//                       setState(() {
//                         phoneNumber = phone.completeNumber;
//                         isCountrySelected = true;
//                       });
//                     },
//                     focusNode: phoneNumberFocusNode,
//                   ),
//                   SizedBox(
//                     height: screenheight * 0.08,
//                     child: CustomTextField(
//                       prefixIcon: const Icon(Icons.email),
//                       controller: emailController,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Enter your email';
//                         }
//                         return null;
//                       },
//                       labelText: 'Email',
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenheight * 0.08,
//                     child: CustomTextField(
//                       prefixIcon: const Icon(Icons.lock),
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Enter your password';
//                         }
//                         return null;
//                       },
//                       labelText: 'Password',
//                       controller: passwordController,
//                     ),
//                   ),
//                   ListView(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     children: [
//                       const Card(
//                         elevation: 0,
//                         child: ListTile(
//                           leading: Icon(
//                             Icons.question_mark,
//                             color: Colors.purple,
//                           ),
//                           title: Text(
//                             'Company information',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: Icon(Icons.arrow_forward_ios_rounded),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0,
//                         child: ListTile(
//                           leading: Image(
//                             image: const AssetImage('assets/images/call.png'),
//                             color: Colors.purple,
//                             height: screenheight * 0.043,
//                           ),
//                           title: const Text(
//                             'Categories ',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: const Icon(Icons.arrow_forward_ios_rounded),
//                         ),
//                       ),
//                       const Card(
//                         elevation: 0,
//                         child: ListTile(
//                           leading: Icon(
//                             Icons.thumb_up,
//                             color: Colors.purple,
//                           ),
//                           title: Text(
//                             'Branches',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: Icon(Icons.arrow_forward_ios_rounded),
//                         ),
//                       ),
//                       const Card(
//                         elevation: 0,
//                         child: ListTile(
//                           leading: Icon(
//                             Icons.note_add,
//                             color: Colors.purple,
//                           ),
//                           title: Text(
//                             'Legal Documents',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: Icon(
//                             Icons.arrow_forward_ios_rounded,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // ... your existing code
// }
