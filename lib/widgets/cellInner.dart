import 'package:flutter/material.dart';
import 'package:schedulerapp/main.dart';

import '../constants/constants.dart';

class innerCell extends StatelessWidget {
  var value;
  final Color color;
  innerCell({
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cellWidthHI,
      height: cellhieght,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: color,
        border: Border.all(
          color: Colorss().color1.withOpacity(0.5),
          width: 0.3,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        '${value ?? ''}',
        style: TextStyle(fontSize: 16.0, fontFamily: ''),
      ),
    );
  }
}
