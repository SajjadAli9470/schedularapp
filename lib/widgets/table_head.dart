import 'package:flutter/material.dart';
import 'package:schedulerapp/main.dart';

import '../constants/constants.dart';
import 'cellHeader.dart';
import 'cellInner.dart';

class TableHead extends StatelessWidget {
  final ScrollController scrollController;

  TableHead({
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cellhieght,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
                controller: scrollController,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: no_dept,
                itemBuilder: (context, index) {
                  return headerCell(
                    color: Colorss().color4,
                    value: departments[index],
                    width: cellWidthHI,
                  );
                }),
            // child: ListView(
            //   controller: scrollController,
            //   physics: ClampingScrollPhysics(),
            //   scrollDirection: Axis.horizontal,
            //   children: allFields(
            //       color: Colors.yellow.withOpacity(0.3),
            //       value: departments[index - 1],
            //     )

            // ),
          ),
          headerCell(
            color: Colorss().color1,
            value: 'تاریخ اور علاقہ',
            textcolor: Colors.white,
          ),
        ],
      ),
    );
  }
}
