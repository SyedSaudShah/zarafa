import 'package:zarafa/Controller/Routes/routes_method.dart';
import 'package:zarafa/Customtext/custom_text.dart';
import 'package:zarafa/Screens/Resource/cliper.dart';

import '../../../Export/export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    double clipperHeight =
        screenheight * 0.2; // Set clipper height to 10% of screen height
    //int _currentIndex = 0; //for botm bar

    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
              child: SizedBox(
                  height: clipperHeight,
                  child: Stack(children: [
                    ClipPath(
                      clipper: Customshape(),
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Color.fromARGB(255, 174, 54, 230),
                              Color.fromARGB(255, 204, 152, 244),
                              Color.fromARGB(255, 172, 153, 251),
                            ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      ),
                    ),
                  ]))),
          SizedBox(
            height: screenheight * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: screenheight * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 232, 232, 232),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    height: screenheight * 0.2,
                    width: screenwidth * 0.2,
                    decoration: const BoxDecoration(),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/grop.png'),
                    ),
                  ),
                  SizedBox(width: screenwidth * 0.03),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Text(
                            'Mahmoud Alnatour',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Expanded(
                          child: Text(
                            'ID:0099887766554433221116 ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.abc),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RoutesName.eidtprofilescreen);
                              },
                              child: const Text('edit profile'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomTextForScreen(
            text: 'Account informaction',
            onPressed: () {},
          ),
          SizedBox(
            height: screenheight * 0.01,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                CustomListTile(
                  title: 'My Package',
                  leadingIcon: Icons.question_mark,
                  onTap: () {
                    Navigator.popAndPushNamed(context, RoutesName.mypackages);
                    // Handle onTap for this specific tile
                  },
                ),
                CustomListTile(
                  title: 'My Compaigns',
                  leadingIcon: Icons.call,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                //  Add more CustomListTile widgets as needed
                CustomListTile(
                  title: 'My Agent',
                  leadingIcon: Icons.call,
                  onTap: () {
                    Navigator.popAndPushNamed(context, RoutesName.myagent);
                    // Handle onTap for this specific tile
                  },
                ),
                //  Add more CustomListTile widgets as needed
                CustomListTile(
                  title: 'Notification',
                  leadingIcon: Icons.call,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                //  Add more CustomListTile widgets as needed
                CustomTextForScreen(
                  text: 'Support',
                  onPressed: () {},
                ),
                CustomListTile(
                  title: 'Help',
                  leadingIcon: Icons.question_mark,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                CustomListTile(
                  title: 'Contact Us',
                  leadingIcon: Icons.question_mark,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                CustomListTile(
                  title: 'Suggestions',
                  leadingIcon: Icons.call,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                //  Add more CustomListTile widgets as needed
                CustomListTile(
                  title: 'Legal',
                  leadingIcon: Icons.call,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                //  Add more CustomListTile widgets as needed
                CustomListTile(
                  title: 'Setting',
                  leadingIcon: Icons.call,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                CustomListTile(
                  title: 'About App',
                  leadingIcon: Icons.call,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
                //  Add more CustomListTile widgets as needed
                CustomListTile(
                  title: 'Log Out',
                  leadingIcon: Icons.call,
                  onTap: () {
                    // Handle onTap for this specific tile
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

//Custom List Tile for Using List View
class CustomListTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final Function()? onTap;

  const CustomListTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          leadingIcon,
          color: Colors.purple,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
