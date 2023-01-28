import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:schedulerapp/main.dart';
import '../constants/constants.dart';
import 'cellInner.dart';
import 'cellRightColumn.dart';

class TableBody extends StatefulWidget {
  final ScrollController scrollController;

  TableBody({
    required this.scrollController,
  });

  @override
  _TableBodyState createState() => _TableBodyState();
}

class _TableBodyState extends State<TableBody> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _firstColumnController;
  late ScrollController _restColumnsController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _firstColumnController = _controllers.addAndGet();
    _restColumnsController = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _firstColumnController.dispose();
    _restColumnsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: RefreshIndicator(
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 0 || notification.depth == 1;
          },
          onRefresh: () async {
            await Future.delayed(
              Duration(seconds: 2),
            );
          },
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  controller: widget.scrollController,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  child: SizedBox(
                    width: (no_dept) * cellWidthHI,
                    child: ListView.builder(
                        controller: _restColumnsController,
                        physics: const AlwaysScrollableScrollPhysics(
                          parent: BouncingScrollPhysics(),
                        ),
                        itemCount: days.length - 1,
                        itemBuilder: (context, index) {
                          return Row(
                            children: List.filled(
                                no_dept,
                                innerCell(
                                  value: '',
                                  color: Colorss().color5,
                                ),
                                growable: false),
                          );
                          // return ListView.builder(
                          //     itemBuilder: (context, jndex) {
                          //   return allFields(
                          //     value: 'done',
                          //     color: Color.fromARGB(255, 255, 255, 255),
                          //   );
                          // });
                        }),
                  ),
                ),
              ),
              SizedBox(
                width: cellWidth,
                child: ListView.builder(
                  controller: _firstColumnController,
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  itemCount: days.length - 1,
                  itemBuilder: (context, index) {
                    return cellRight(
                      value: 'کراچی ڈویژن',
                      color: Colorss().color1,
                      date: dates[index],
                      day: days[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
