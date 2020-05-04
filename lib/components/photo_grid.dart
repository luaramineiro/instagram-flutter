import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  final List<String> _urlList;

  const PhotoGrid(this._urlList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: List.generate(
          _urlList.length,
          (i) => Image(
            image: NetworkImage(_urlList[i]),
          ),
        ),
      ),
    );
  }
}
