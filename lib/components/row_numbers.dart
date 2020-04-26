import 'package:flutter/material.dart';

class RowNumbers extends StatelessWidget {
  final int publications;
  final int followers;
  final int following;

  const RowNumbers({
    Key key,
    @required this.publications,
    @required this.followers,
    @required this.following,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            bigText(publications.toString()),
            smallText("Publicações"),
          ],
        ),
        SizedBox(width: 28),
        Column(
          children: <Widget>[
            bigText(followers.toString()),
            smallText("Seguidores"),
          ],
        ),
        SizedBox(width: 28),
        Column(
          children: <Widget>[
            bigText(following.toString()),
            smallText("Seguindo"),
          ],
        ),
      ],
    );
  }

  Text smallText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text bigText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
