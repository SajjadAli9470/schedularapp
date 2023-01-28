import 'package:flutter/material.dart';
import 'package:schedulerapp/main.dart';
import 'package:schedulerapp/widgets/entryFormDetail.dart';

import '../constants/constants.dart';

class EntryScheduler extends StatefulWidget {
  const EntryScheduler({super.key});

  @override
  State<EntryScheduler> createState() => _EntrySchedulerState();
}

class _EntrySchedulerState extends State<EntryScheduler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        EntryFormDetail(),
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
              color: Colorss().color1,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colorss().color1,
                width: 0.5,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 1),
                  width: cellWidth * 0.45,
                  height: cellhieght * 0.95,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: Text(
                      "Area",
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
                        "WED",
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
                            "15",
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
        ),
      ]),
    );
  }
}
