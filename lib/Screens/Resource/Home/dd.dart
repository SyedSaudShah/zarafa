/**
 * Column(children: [
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
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16.0), // Adjust the padding as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Orange',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20.0), // Adjust the spacing as needed
                  Icon(
                    Icons.notification_add,
                    size: 40.0,
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_right_alt,
                        size: 40.0,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Total amount Spent',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$ 0 ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text('No Spending Limit'),
                      SizedBox(width: 10.0),
                      Icon(
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
      const Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 25.0), // Adjust the padding as needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Campaigns',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 20.0), // Adjust the spacing as needed
            Icon(
              Icons.campaign,
              size: 40.0,
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
                      fit: BoxFit.cover, // Adjust the BoxFit property as needed
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('you dont have any campaign yet'),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LetsStartCustomButton(
                        text: 'Creat new campaign',
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
      // IndexedStack(
      //   index: _currentIndex,
      //   children: _pages,
      // ),
    ]));
  
 */