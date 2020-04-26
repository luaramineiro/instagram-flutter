import 'package:flutter/material.dart';
import 'package:instagram/components/circular_avatar.dart';
import 'package:instagram/components/row_numbers.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String url =
      "https://lh3.googleusercontent.com/-4BCK8g0XefQ/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck52F8OvJ16KI1hHTfY0FCwUENUHg.CMID/s83-c/photo.jpg";
  String name = "Luara Mineiro";
  String username = "luara.mineiro";
  String email = "luara.mineiro@cubos.io";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          header(),
          tabView(),
        ],
      ),
    );
  }

  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 4.0),
            CircularAvatar(
              urlImage: url,
              icon: Icons.add,
            ),
            SizedBox(width: 8.0),
            RowNumbers(
              publications: 123,
              following: 134,
              followers: 566,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              Text(email),
            ],
          ),
        ),
      ],
    );
  }

  Widget tabView() {
    return Expanded(
      child: Container(
        color: Colors.white10,
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white10,
      title: Text(
        username,
        style: TextStyle(
          color: Colors.grey[800],
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(Icons.menu, color: Colors.grey[800]),
        ),
      ],
    );
  }
}
