import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}

class IntializeSchedule {
  _DataSource getCalendarDataSource() {
    late Color weekColor;
    final List<Appointment> appointments = <Appointment>[];
    var selected = DateTime(2023, 1, 1, 0, 0, 0);
    DateTime startDay = DateTime(1990, 1, 1, 0, 0, 0);
    DateTime endDay = DateTime(2050, 1, 1, 0, 0, 0);
    for (int i = 0; i < 12784; i++) {
      DateTime setValue = startDay.add(Duration(days: i));
      var weekDay = DateFormat('EEEE').format(setValue);
      weekColor = Colors.white;
      
      // if (weekDay == "Saturday") {
      //   // weekColor = Color.fromARGB(36, 255, 0, 0);
      // } else if (weekDay == "Sunday") {
      //   // weekColor = Color.fromARGB(44, 73, 72, 0);
      // } else if (weekDay == "Monday") {
      //   // weekColor = Color.fromARGB(38, 81, 202, 0);
      // } else if (weekDay == "Tuesday") {
      //   // weekColor = Color.fromARGB(45, 12, 102, 0);
      // } else if (weekDay == "Wednesday") {
      //   // weekColor = Color.fromARGB(43, 1, 189, 196);
      // } else if (weekDay == "Thursday") {
      //   // weekColor = Color.fromARGB(41, 2, 50, 112);
      // } else if (weekDay == "Friday") {
      //   // weekColor = Color.fromARGB(41, 100, 61, 3);
      // }

      if (setValue == selected) {
        appointments.add(Appointment(
            startTime: setValue,
            endTime: setValue,
            subject: 'Asalam Bhai yahan per tammam discription ayee gi',
            isAllDay: true,
            color: weekColor));
      } else {
        appointments.add(Appointment(
            startTime: setValue,
            endTime: setValue,
            subject: '',
            isAllDay: true,
            color: weekColor));
      }
    }
    // appointments.add(Appointment(
    //   startTime: DateTime(2020, 1, 22, 1, 0, 0),
    //   endTime: DateTime(2020, 1, 22, 3, 0, 0),
    //   subject: 'Support',
    //   isAllDay: true,
    //   // color: Colors.green,
    // ));
    // appointments.add(Appointment(
    //   startTime: DateTime(2020, 1, 24, 3, 0, 0),
    //   endTime: DateTime(2020, 1, 24, 4, 0, 0),
    //   subject: 'Retrospective',
    //   isAllDay: true,
    //   // color: Colors.purple,
    // ));

    return _DataSource(appointments);
  }
}
