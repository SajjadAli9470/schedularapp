import 'package:flutter/material.dart';
import 'package:schedulerapp/main.dart';

import '../constants/constants.dart';

class cellRight extends StatelessWidget {
  var date;
  var day;
  var value;
  final Color color;

  cellRight({
    required this.value,
    required this.date,
    required this.color,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cellWidth,
      height: cellhieght,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          border: Border.all(
            color: Colors.white,
            width: 0.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 1),
              width: cellWidth * 0.70,
              height: cellhieght * 0.95,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(9)),
              child: Center(
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 10.0, height: 1, fontWeight: FontWeight.bold),
                  //
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    day,
                    style: TextStyle(
                        fontSize: 10.0,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: ''),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2, bottom: 0),
                    child: CircleAvatar(
                      maxRadius: 12,
                      child: Text(
                        date,
                        style: TextStyle(
                            fontFamily: '',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// alignment: Alignment.center,
// child: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
//     Container(
//       child: Text(
//         '$value',
//         style: TextStyle(fontSize: 10),
//       ),
//     ),
//     Container(
//       child: Column(
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             child: Text(
//               '${day ?? ''}',
//               style: TextStyle(
//                   fontSize: 10.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             child: Text(
//               "${date}",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 11,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
