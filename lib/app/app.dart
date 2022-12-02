import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();

  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Payments'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 27.0,
            ),
          )
        ]),
        leading: IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                print("Notify press");
              },
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.black,
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  print("home");
                },
                icon: const Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {
                  print("home");
                },
                icon: const Icon(Icons.analytics),
              ),
              IconButton(
                onPressed: () {
                  print("home");
                },
                icon: const Icon(Icons.payments),
              ),
              IconButton(
                onPressed: () {
                  print("home");
                },
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Balance',
              style: TextStyle(
                color: Color(0xFF8A8A8E),
                fontSize: 18.3,
              ),
            ),
            const Text('₱ 82.45',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.5,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 20.0,
            ),
            Row(children: [
              Expanded(
                  child: SizedBox(
                height: 180,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF13D884)),
                        child: const SizedBox(
                          width: 300,
                          height: 180,
                        ),
                      );
                    }),
              )),
            ]),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFFEEEEEE))),
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () => {print("all press")},
                                    child: const Text("All",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19))),
                                TextButton(
                                    onPressed: () => {print("Income press")},
                                    child: const Text("Income",
                                        style: TextStyle(
                                            color: Color(0xFFB6B6B6),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19))),
                                TextButton(
                                    onPressed: () => {print("Expense press")},
                                    child: const Text("Expense",
                                        style: TextStyle(
                                            color: Color(0xFFB6B6B6),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19)))
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 18),
                              child: const Icon(
                                Icons.search,
                                color: Color(0xFFB6B6B6),
                                size: 27,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          "Today, Nov 17",
                          style: TextStyle(
                            color: Color(0xFFB6B6B6),
                            fontSize: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.credit_card_rounded,
                                size: 54,
                                color: Color(0xFF7D73C3),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Apple Arcade",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "11:11 AM",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF8A8A8E),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "₱99.99",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFD34F7B),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.credit_card_rounded,
                                size: 54,
                                color: Color(0xFF7D73C3),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Apple TV",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "18:00 PM",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF8A8A8E),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "₱199.99",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFD34F7B),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "Yesterday, Nov 16",
                          style: TextStyle(
                            color: Color(0xFFB6B6B6),
                            fontSize: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.credit_card_rounded,
                                size: 54,
                                color: Color(0xFF3AC6D5),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Wild Rift Refund",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "06:00 AM",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF8A8A8E),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "₱450.75",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF13D884),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.credit_card_rounded,
                                size: 54,
                                color: Color(0xFF7D73C3),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Apple TV",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "18:00 PM",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF8A8A8E),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "₱199.99",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFD34F7B),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
