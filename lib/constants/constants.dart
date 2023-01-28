import 'package:intl/intl.dart';

var departments = [
  'دعوت و اصلاح ',
  'اسکائ',
  'سوشل میڈیا ',
  'خواتین ',
  ' طلباء ',
  'میڈیکل ',
  ' آڈٹ',
  'اساتذہ '
];

List<String> days = [];
List<String> dates = [];

class getDays {
  DateTime startDay = DateTime(2023, 1, 1, 0, 0, 0);
  DateTime endDay = DateTime(2023, 2, 1, 0, 0, 0);
  DateTime setValue = DateTime(2023, 1, 1, 0, 0, 0);

  getAllDays() {
    setValue = DateTime(2023, 1, 1, 0, 0, 0);
    var i = 0;
    while (setValue != endDay) {
      setValue = startDay.add(Duration(days: i));
      var weekDay = DateFormat('EEE').format(setValue);
      var date = DateFormat('d').format(setValue);
      // print(setValue);
      days.add(weekDay);
      dates.add(date);
      i++;
    }
  }
}

class Constants {
  Constants._();
  static const double padding = 20;
  static const double closeIcon = 45;
}

// ignore: non_constant_identifier_names
int no_dept = departments.length;
int maxNumber = 31;
const double cellWidth = 120;
const double cellhieght = 55;
const double cellWidthHI = 150;
const double cellhieghtHI = 50;
// ignore: constant_identifier_names
const double TextHieght = 2;
double hieght = 40;
