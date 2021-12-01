import 'package:flutter/material.dart';

class AvatarsPage extends StatelessWidget {
  const AvatarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home_filled),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person_outline),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              title: Text("Salir"),
              leading: Icon(Icons.close),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Avatars"),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpeg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
    );
  }
}
