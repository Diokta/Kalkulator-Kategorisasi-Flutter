import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    const appName = 'Calculation App';
    const urlImage =
        'https://cdn2.iconfinder.com/data/icons/ios7-inspired-mac-icon-set/512/Calculator_512.png';

    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              appName: appName,
              // onClicked: () {},
            ),
            const Divider(
              color: Colors.black,
            ),
            buildMenuItem(
              text: "About",
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            buildMenuItem(
              text: "Help",
              icon: Icons.help,
              onClicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: "Exit",
              icon: Icons.exit_to_app,
              onClicked: () => selectedItem(context, 2),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String appName,
    required String urlImage,
    // required VoidCallback onClicked,
  }) =>
      InkWell(
        // onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.only(top: 40, bottom: 18)),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 14,
                backgroundImage: NetworkImage(urlImage),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                appName,
                style: const TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      hoverColor: Colors.black54,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
    }
  }
}
