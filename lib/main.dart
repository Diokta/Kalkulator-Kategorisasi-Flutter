import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/navigation_drawer_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void startCalculate() {}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.playfairDisplayTextTheme(
              Theme.of(context).textTheme)),
      home: Scaffold(
        drawer: const NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "CALCULATION APP",
            style: TextStyle(color: Colors.black),
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 22),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  height: 142,
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Categorization",
                        style: TextStyle(fontSize: 10),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 13,
                          bottom: 19,
                        ),
                        child: Text(
                          "Let's categorization your data!",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      MaterialButton(
                        height: 33,
                        minWidth: 218,
                        color: Colors.grey,
                        onPressed: startCalculate,
                        child: const Text("Start Calculate"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
