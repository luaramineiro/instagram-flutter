import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final String urlImage;
  final IconData icon;
  final Color buttonColor;
  final double size;
  final VoidCallback onPresed;

  CircularAvatar(
      {Key key,
      @required this.urlImage,
      this.icon,
      this.buttonColor,
      this.size = 100,
      this.onPresed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresed,
      child: Container(
        height: size,
        width: size,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(urlImage),
                  ),
                ),
              ),
              if (icon != null)
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Icon(
                      icon,
                      size: size * 0.2,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
