import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:kalkulator/main.dart';
import 'package:kalkulator/pages/Calculate_page.dart';
import 'package:kalkulator/widgets/navigation_drawer_widget.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';

class CategorizationPage extends StatefulWidget {
  const CategorizationPage({Key? key}) : super(key: key);

  @override
  State<CategorizationPage> createState() => _CategorizationPageState();
}

class _CategorizationPageState extends State<CategorizationPage> {
  final _pageController = PageController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        drawer: const NavigationDrawerWidget(),
        appBar: appBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    activeCircle("1"),
                    dashedLine,
                    inactiveCircle("2"),
                    dashedLine,
                    inactiveCircle("3"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Categorization"),
                    SizedBox(
                      width: 40,
                    ),
                    Text("Calculate"),
                    SizedBox(
                      width: 60,
                    ),
                    Text("Report"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                  height: MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      133,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15.0),
                    ),
                    border: Border.all(color: borderColor),
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: secondaryColor,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 5.0,
                      ),
                    ],
                    // color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: new InputDecoration(
                            // hintText: "Masukkan nama variab",
                            labelText: "Nama Variabel",
                            // icon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            // hintText: "Masukkan nama variab",
                            labelText: "Jumlah Responden",
                            // icon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            // hintText: "Masukkan nama variab",
                            labelText: "Jumlah Total Skor",
                            // icon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            // hintText: "Masukkan nama variab",
                            labelText: "Jumlah Item Valid",
                            // icon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            // hintText: "Masukkan nama variab",
                            labelText: "Nilai Skala Terkecil",
                            // icon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            // hintText: "Masukkan nama variab",
                            labelText: "Nilai Skala Terbesar",
                            // icon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            // hintText: "Masukkan nama variab",
                            labelText: "Nilai Tengah Skala",
                            // icon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RaisedButton(
                              child: Text(
                                "Reset",
                                style: TextStyle(color: textColor),
                              ),
                              color: buttonColor,
                              onPressed: () {
                                // if (_formKey.currentState.validate()) {}
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RaisedButton(
                              child: Text(
                                "Calculate",
                                style: TextStyle(color: textColor),
                              ),
                              color: buttonColor,
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return CalculatePage();
                                  }),
                                );
                                // if (_formKey.currentState.validate()) {}
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget activeCircle(index) => new Container(
        width: 25.0,
        height: 25.0,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
        decoration: new BoxDecoration(
          color: Colors.black26,
          border: Border.all(color: Colors.black),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            index,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      );

  Widget inactiveCircle(index) => new Container(
        width: 25.0,
        height: 25.0,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
        decoration: new BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            index,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      );

  Widget dashedLine = new Flexible(
    flex: 1,
    child: Container(
      padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
      width: 100,
      height: 50,
      child: Center(
        child: DottedLine(
          dashColor: Colors.black,
        ),
      ),
    ),
  );

  final PreferredSizeWidget appBar = AppBar(
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
  );
}
