import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Customtext/custom_text.dart';
import 'package:zarafa/Screens/Resource/Money/MoneyCard/money_card.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';
import '../../../Export/export.dart';

class Money extends StatefulWidget {
  const Money({super.key});

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  final DateTime _selectedDate = DateTime.now();
  String _selectedWeekday = 'today';
  bool isContainerVisible = true;
  List<String> weekdays = [
    'today',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double clipperHeight = screenHeight * 0.2;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: clipperHeight,
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
                    Center(
                      child: Positioned(
                        bottom: 0,
                        left: 150,
                        right: 30,
                        top: 50,
                        child: CustomTextButton(
                          text: 'Money',
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: screenHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 232, 232, 232),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.1,
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/grop.png'),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Mahmoud Alnatour',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Expanded(
                              child: Text(
                                'ID:0099887766554433221116 ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  CustomTextForScreen(
                    text: 'Balance Overview',
                    onPressed: () {},
                  )
                ],
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCardMoney(title: 'title', description: '0 job'),
                    CustomCardMoney(title: 'title', description: '0 job'),
                    CustomCardMoney(title: 'title', description: '0 job')
                  ],
                ),
              ),
              Visibility(
                  visible: isContainerVisible,
                  child: const Text('transfer screen')),
              Center(
                child: Visibility(
                  visible: !isContainerVisible,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomTextForScreen(
                            text: 'Transactions Detail',
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: screenWidth * 0.11,
                          ),
                          CustomTextForScreen(
                            text: 'View all',
                            padding: 0,
                            onPressed: () {
                              // Handle 'View all' button press
                            },
                          ),
                          Expanded(
                            child: Align(
                              child: IconButton(
                                onPressed: () {
                                  // Handle arrow forward button press
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: screenWidth * 0.2,
                                      child: TextFormField(
                                        readOnly: true,
                                        onTap: () => _selectedDate,
                                        controller: TextEditingController(
                                          text: "${_selectedDate.toLocal()}"
                                              .split(' ')[0],
                                        ),
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: '',
                                          prefixIcon:
                                              Icon(Icons.calendar_month),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.04,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      width: screenWidth * 0.2,
                                      child: TextFormField(
                                        readOnly: true,
                                        onTap: () => _selectedDate,
                                        controller: TextEditingController(
                                          text: "${_selectedDate.toLocal()}"
                                              .split(' ')[0],
                                        ),
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: '',
                                          prefixIcon:
                                              Icon(Icons.calendar_month),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: SizedBox(
                                      width: screenWidth * 0.2,
                                      child: DropdownButtonFormField<String>(
                                        value: _selectedWeekday,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectedWeekday = newValue!;
                                          });
                                        },
                                        items: weekdays
                                            .map<DropdownMenuItem<String>>(
                                          (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          },
                                        ).toList(),
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Select Weekday',
                                          prefixIcon:
                                              Icon(Icons.calendar_month),
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    width: screenWidth * 0.8,
                                    height: screenHeight * 0.14,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, RoutesName.moneydetails);
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 0.4,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: CircleAvatar(
                                                child: Image.asset(
                                                  'assets/images/annual.png',
                                                  height: screenHeight * 0.1,
                                                  width: screenWidth * 0.1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    'Silver Packages Subscription',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style:
                                                          DefaultTextStyle.of(
                                                                  context)
                                                              .style,
                                                      children: const [
                                                        TextSpan(
                                                          text: 'Amount',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .purple),
                                                        ),
                                                        TextSpan(
                                                          text: ' -JOD 100',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    width: screenWidth * 0.8,
                                    height: screenHeight * 0.14,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 0.4,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: CircleAvatar(
                                                child: Image.asset(
                                                  'assets/images/annual.png',
                                                  height: screenHeight * 0.1,
                                                  width: screenWidth * 0.1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    'Window ads',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style:
                                                          DefaultTextStyle.of(
                                                                  context)
                                                              .style,
                                                      children: const [
                                                        TextSpan(
                                                          text: 'Amount',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .purple),
                                                        ),
                                                        TextSpan(
                                                          text: ' -JOD 100',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    width: screenWidth * 0.8,
                                    height: screenHeight * 0.14,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 0.4,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: CircleAvatar(
                                                child: Image.asset(
                                                  'assets/images/annual.png',
                                                  height: screenHeight * 0.1,
                                                  width: screenWidth * 0.1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    'Wallet Top Up',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style:
                                                          DefaultTextStyle.of(
                                                                  context)
                                                              .style,
                                                      children: const [
                                                        TextSpan(
                                                          text: 'Amount',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .purple),
                                                        ),
                                                        TextSpan(
                                                          text: ' +JOD 100',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              LetsStartCustomButton(
                text: 'Top Up',
                onPressed: () {
                  setState(() {
                    isContainerVisible = !isContainerVisible;
                  });
                },
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
