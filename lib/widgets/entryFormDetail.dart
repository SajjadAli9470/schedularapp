import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:schedulerapp/main.dart';
import '../constants/constants.dart';

class EntryFormDetail extends StatefulWidget {
  const EntryFormDetail({super.key});

  @override
  State<EntryFormDetail> createState() => _EntryFormDetailState();
}

class _EntryFormDetailState extends State<EntryFormDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cellhieght,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
        border: Border.all(
          color: Colorss().color1.withOpacity(0.5),
          width: 0.3,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        'Here is detail',
        style: TextStyle(fontSize: 16.0, fontFamily: ''),
      ),
    );
  }
}
