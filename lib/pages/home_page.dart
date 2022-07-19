import 'package:flutter/material.dart';
import 'package:kalkulator/main.dart';
import 'package:kalkulator/pages/Categorization_page.dart';
import '../widgets/navigation_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "CALCULATION APP",
          style: TextStyle(color: textColor),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: secondaryColor,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      body: Container(
        color: secondaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 16, top: 22),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: primaryColor,
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
                      color: buttonColor,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return CategorizationPage();
                          }),
                        );
                      },
                      child: const Text("Start Calculate"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
