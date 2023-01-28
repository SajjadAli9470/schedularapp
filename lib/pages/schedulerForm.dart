import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import '../constants/constants.dart';
import '../widgets/table_body.dart';
import '../widgets/table_head.dart';

class schedulerForm extends StatefulWidget {
  const schedulerForm({super.key});

  @override
  _schedulerFormState createState() => _schedulerFormState();
}

class _schedulerFormState extends State<schedulerForm> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _headController;
  late ScrollController _bodyController;

  @override
  void initState() {
    super.initState();
    getDays().getAllDays();
    _controllers = LinkedScrollControllerGroup();
    _headController = _controllers.addAndGet();
    _bodyController = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _headController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TableHead(
              scrollController: _headController,
            ),
            Expanded(
              child: TableBody(
                scrollController: _bodyController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
