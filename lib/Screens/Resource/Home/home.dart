import 'package:zarafa/Customtext/custom_text.dart';
import 'package:zarafa/Screens/Resource/AccountScreen/account.dart';
import 'package:zarafa/Screens/Resource/Money/money.dart';

import '../../../../Export/export.dart';

import '../cliper.dart';

class Mybottombar extends StatefulWidget {
  const Mybottombar({super.key});

  @override
  State<Mybottombar> createState() => _MybottombarState();
}

class _MybottombarState extends State<Mybottombar> {
  int currentIndex = 0;

  // List of widgets for each tab
  var pages = [
    const HomePage(),
    Money(),
    const SettingScreen(),
    const Center(child: Text('Favorites Page')),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4, iconSize: 24,
        type: BottomNavigationBarType.fixed, // Set type to fixed
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            icon: ClipOval(
              child: Material(
                color:
                    Colors.transparent, // Set the Material color to transparent
                child: InkWell(
                  onTap: () {
                    // Handle the tap event
                  },
                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 231, 21, 221),
                            Color.fromARGB(255, 133, 104, 237), // Another color
                            Color.fromARGB(255, 10, 180, 192), // Another color
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}

//  Setting
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('setting'),
    );
  }
}

// Home
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _NewScreenState();
}

class _NewScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    double clipperHeight =
        screenHeight * 0.2; // Set clipper height to 10% of screen height
    //int _currentIndex = 0; //for botm bar

    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: clipperHeight,
        child: Stack(children: [
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 174, 54, 230),
                Color.fromARGB(255, 204, 152, 244),
                Color.fromARGB(255, 172, 153, 251),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0), // Adjust the padding as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: CustomTextButton(
                    text: 'Orange',
                    onPressed: () {},
                  )),
                  SizedBox(
                      width: screenWidth * 0.1), // Adjust the spacing as needed
                  const Icon(
                    Icons.notification_add,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
      const Padding(padding: EdgeInsets.all(10)),
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0), // Adjust the horizontal padding as needed
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 232, 232, 232),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_right_alt,
                        size: 40.0,
                        color: Colors.red,
                      ),
                      SizedBox(width: screenWidth * 0.010),
                      CustomTextForScreen(
                        text: 'Total amount Spent',
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.002),
                  CustomTextForScreen(
                    text: '\$ 0 ',
                    onPressed: () {},
                  ),
                  Row(
                    children: [
                      CustomTextForScreen(
                        text: 'No Spending Limit',
                        onPressed: () {},
                      ),
                      // Text('No Spending Limit'),
                      const SizedBox(width: 10.0),
                      const Icon(
                        Icons.arrow_right_alt,
                        size: 40.0,
                        color: Color.fromARGB(255, 38, 50, 56),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 25.0), // Adjust the padding as needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: CustomTextForScreen(
              text: 'Campaigns',
              onPressed: () {},
            )),
            SizedBox(width: screenWidth * 0.1), // Adjust the spacing as needed
            const Icon(
              Icons.campaign,
              size: 30.0,
              color: Colors.purple,
            ),
          ],
        ),
      ),
      const DefaultTabController(
        length: 2,
        child: TabBar(
          labelColor: Colors.black,
          tabs: [
            Tab(
              child: Text('Maximum'),
            ),
            Tab(
              child: Text('Filter'),
            ),
          ],
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/camp.png',
                      fit: BoxFit.cover,
                      height: screenHeight *
                          0.12, // Adjust the BoxFit property as needed
                    ),
                    CustomTextForScreen(
                      text: 'you dont have any campaign yet',
                      onPressed: () {},
                    ),
                    LetsStartCustomButton(
                      text: 'Creat new campaign',
                      onPressed: () {},
                    ),
                  ],
                )),
          ),
        ),
      ),
    ]));
  }
}
