import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:schedulerapp/widgets/entryFormRow.dart';

class SchedularEntry extends StatefulWidget {
  const SchedularEntry({super.key});

  @override
  State<SchedularEntry> createState() => _SchedularEntryState();
}

class _SchedularEntryState extends State<SchedularEntry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: ((context, index) {
                    return EntryScheduler();
                  })),
            )
          ],
        ),
      ),
    );
  }
}
