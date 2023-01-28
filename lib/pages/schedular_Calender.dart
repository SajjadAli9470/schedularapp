import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:schedulerapp/main.dart';
import 'package:schedulerapp/pages/HomePage.dart';
import 'package:schedulerapp/schedule/intializeSchedule.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../constants/constants.dart';

class schedularCalender extends StatefulWidget {
  const schedularCalender({super.key});

  @override
  State<schedularCalender> createState() => _schedularCalenderState();
}

class _schedularCalenderState extends State<schedularCalender> {
  late DateTime _selectedDay = DateTime.now();
  late Appointment _selectedApp;
  final _textController = TextEditingController();
  final _dialogDateController = TextEditingController();
  final _calenderController = const schedularCalender();
  // ignore: non_constant_identifier_names
  var DialogDate;

  Future<void> _getAppointment(CalendarTapDetails c) async {
    if (c.appointments == null) {
      print("Wrong location");
    } else {
      _selectedDay = c.date!;
      _textController.text = c.appointments![0].subject.toString();
      DialogDate = DateFormat.yMMMMEEEEd().format(_selectedDay);
      DialogBox();
    }
  }

  DialogBox() async {
    showDialog(
        context: context,
        builder: (context) {
          _dialogDateController.text = DateFormat.MMMEd().format(_selectedDay);
          return Dialog(
            insetPadding: const EdgeInsets.only(right: 20, left: 20),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 20, right: 20),
                  // margin: const EdgeInsets.only(
                  //     top: Constants.closeIcon, left: 20, right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Constants.padding),
                  ),
                  child: SizedBox(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colorss().color1,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              DialogDate,
                              style: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: '',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: const TextStyle(fontSize: 15, height: 2),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(10),
                                floatingLabelStyle:
                                    const TextStyle(fontSize: 20),
                                alignLabelWithHint: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: 'Area',
                                hintStyle: const TextStyle(
                                    color: Color.fromARGB(255, 202, 202, 202)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 200,
                            child: TextField(
                              controller: _textController,
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: const EdgeInsets.all(10),
                                  floatingLabelStyle:
                                      const TextStyle(fontSize: 20),
                                  alignLabelWithHint: true,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelText: 'Description',
                                  hintStyle: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 202, 202, 202)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              minLines: 8,
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              style: const TextStyle(
                                  fontSize: 15, height: 1.5, fontFamily: ''),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colorss().color1,
                                  borderRadius: BorderRadius.circular(50)),
                              child: ElevatedButton(
                                  style: EBstyle,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Save",
                                    style:
                                        TextStyle(fontSize: 15, fontFamily: ''),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colorss().color2,
                      radius: 15,
                      child: const ClipRRect(
                          borderRadius: BorderRadius.all(
                              Radius.circular(Constants.closeIcon)),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Colorss().color1;
    return Scaffold(
      backgroundColor: Colorss().color4,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "جدول براۓ تنظیم",
            style: TextStyle(fontFamily: 'Noto'),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colorss().color1,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SfCalendar(
          todayHighlightColor: Colorss().color1,
          headerStyle: const CalendarHeaderStyle(
              // textAlign: TextAlign.center,
              // backgroundColor: Colorss().color1,
              textStyle: TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.normal,
            letterSpacing: 1,
            color: Colors.white,
          )),
          firstDayOfWeek: DateTime.monday,
          view: CalendarView.schedule,
          showDatePickerButton: true,
          onTap: (CalendarTapDetails details) async {
            _getAppointment(details);
          },
          dataSource: IntializeSchedule().getCalendarDataSource(),
          scheduleViewSettings: const ScheduleViewSettings(
            hideEmptyScheduleWeek: true,
            appointmentItemHeight: 100,
            dayHeaderSettings: DayHeaderSettings(
                dayFormat: 'EEE',
                width: 35,
                dateTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  // color: Color.fromARGB(255, 219, 182, 179),
                ),
                dayTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  // color: Color.fromARGB(255, 223, 196, 194),
                )),
            monthHeaderSettings: MonthHeaderSettings(
                monthFormat: 'MMMM, yyyy',
                height: 60,
                textAlign: TextAlign.center,
                backgroundColor: Color.fromARGB(52, 0, 0, 0),
                monthTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ),
          appointmentBuilder: appointmentBuilder,
        ),
      ),
    );
  }
}

Widget appointmentBuilder(BuildContext context,
    CalendarAppointmentDetails calendarAppointmentDetails) {
  final Appointment appointment = calendarAppointmentDetails.appointments.first;
  return SizedBox(
    height: 20,
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          width: calendarAppointmentDetails.bounds.width * 0.84,
          height: calendarAppointmentDetails.bounds.height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
            color: appointment.color,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                        color: Colorss().color1,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Area",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          height: 1,
                          fontFamily: '',
                          color: Colors.white),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    appointment.subject,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 15,
                        height: 1,
                        fontFamily: '',
                        color: Color.fromARGB(255, 7, 7, 7)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: calendarAppointmentDetails.bounds.height,
          decoration: BoxDecoration(
              color: appointment.color,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5))),
          child: Container(
            margin: const EdgeInsets.all(3),
            child: SizedBox(
              height: 40,
              width: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(0),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.edit_note,
                    color: Color.fromARGB(255, 46, 109, 59),
                    size: 25,
                  ),
                  onPressed: () {},
                ),
                onPressed: () {},
              ),
            ),
          ),
        )
      ],
    ),
  );
}
