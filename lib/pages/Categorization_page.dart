import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kalkulator/main.dart';
import 'package:kalkulator/models/Categorization_view_model.dart';
import 'package:kalkulator/pages/Calculate_page.dart';
import 'package:kalkulator/widgets/Categorization_form.dart';
import 'package:kalkulator/widgets/navigation_drawer_widget.dart';

class CategorizationPage extends StatefulWidget {
  CategorizationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CategorizationPage> createState() => _CategorizationPageState();
}

class _CategorizationPageState extends State<CategorizationPage> {
  final formKey = GlobalKey<FormState>();
  var viewModel = CategorizationViewModel.newCategorization();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        drawer: const NavigationDrawerWidget(),
        appBar: appBar,
        bottomNavigationBar: BottomAppBar(
          child: Row(
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
                  final isValid = formKey.currentState!.validate();

                  assert(
                    isValid == viewModel.isValid(),
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return CalculatePage();
                      }),
                    ),
                  );
                  // print("Categorization Valid : $isValid\n$viewModel");
                },
              ),
            ],
          ),
        ),
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
              Container(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                height: MediaQuery.of(context).size.height -
                    appBar.preferredSize.height +
                    100,
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
                child: CategorizationForm(
                    formKey: formKey,
                    onChanged: (value) => setState(() => viewModel = value),
                    viewModel: viewModel),
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
