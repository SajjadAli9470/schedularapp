import 'package:flutter/material.dart';

import '../constants/constants.dart';

class headerCell extends StatelessWidget {
  var value;
  final Color color;
  Color textcolor;
  double width = cellWidth;

  headerCell({
    required this.value,
    required this.color,
    this.textcolor = Colors.black,
    this.width = 120,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: cellhieght,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(
          color: Colors.white,
          width: 0.5,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        '${value ?? ''}',
        style: TextStyle(fontSize: 16.0, color: textcolor),
      ),
    );
  }
}
