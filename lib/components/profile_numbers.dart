import 'package:flutter/material.dart';

class ProfileNumbers extends StatelessWidget {
  final int publications;
  final int followers;
  final int following;

  const ProfileNumbers({
    Key key,
    @required this.publications,
    @required this.followers,
    @required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(child: numberAndLabel(publications, "Publicações")),
        SizedBox(width: 16),
        Flexible(child: numberAndLabel(followers, "Seguidores")),
        SizedBox(width: 16),
        Flexible(child: numberAndLabel(following, "Seguindo")),
      ],
    );
  }

  Column numberAndLabel(int number, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        bigText(number.toString()),
        smallText(label),
      ],
    );
  }

  Text smallText(String text) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Text bigText(String text) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
