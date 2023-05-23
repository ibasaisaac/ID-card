import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'ID Card'),
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
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xff122813)),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/iut.png',
                        width: 150,
                        height: 150,
                      ),
                      const Text(
                        'ISLAMIC UNIVERSITY OF TECHNOLOGY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 5)),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -89,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    width: 50,
                    height: 90,
                    decoration: const BoxDecoration(color: Color(0xff122813)),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff122813),
                      width: 8,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/profile.png',
                    width: 180,
                    height: 180,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.vpn_key),
                            SizedBox(width: 10),
                            Text(
                              'Student ID',
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Container(
                      height: 35,
                      width: 170,
                      decoration: const BoxDecoration(
                        color: Color(0xff122813),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(45, 45)),
                      ),
                      child: Row(
                        children: [
                          const Padding(padding: EdgeInsets.all(5)),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF2f3ebb)),
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text(
                            '190041223',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(Icons.account_circle),
                          SizedBox(width: 10),
                          Text(
                            'Student Name',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Container(
                      child: const Text(
                        'ISABA ISHRAK',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.school),
                            SizedBox(width: 10),
                            Text(
                              'Program BSc in CSE',
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.people),
                            SizedBox(width: 10),
                            Text(
                              'Department CSE',
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.pin_drop),
                            SizedBox(width: 10),
                            Text(
                              'Bangladesh',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
            //Spacer() to make it go to the end
            Spacer(),
            Container(
              padding: const EdgeInsets.only(top: 12),
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff122813),
              ),
              child: const Text(
                'A subsidiary organ of OIC',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
