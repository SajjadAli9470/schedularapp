import 'package:flutter/material.dart';
import 'package:schedulerapp/main.dart';
import 'package:schedulerapp/pages/schedular_Calender.dart';
import 'package:schedulerapp/pages/schedulerForm.dart';

import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var EBstyle = ElevatedButton.styleFrom(
  elevation: 0.0,
  backgroundColor: Colorss().color1,
  padding: const EdgeInsets.only(
    left: 10,
    right: 10,
  ),
  shape: StadiumBorder(),
);

class _HomePageState extends State<HomePage> {
  Color borderColor = Color.fromARGB(62, 158, 158, 158);
  var style = ElevatedButton.styleFrom(
    elevation: 0.0,
    backgroundColor: Colorss().color1,
    padding: const EdgeInsets.only(
      left: 10,
      right: 10,
    ),
    shape: StadiumBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 210,
                child: Center(
                    child: Container(
                  child: Image(image: AssetImage('assets/mmlo.png')),
                )),
              ),
              // Center(
              //   child: Container(
              //     padding: EdgeInsets.all(10),
              //     child: Text(
              //       "تنظیمی شیڈول",
              //       style: TextStyle(fontSize: 30, fontFamily: 'Noto'),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: BorderSide(color: borderColor, width: 0.0),
                      ),
                      labelText: 'کراچی ڈویژن ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: hieght,
                          width: 330,
                          child: ElevatedButton(
                              style: style,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => schedulerForm()),
                                );
                              },
                              child: const Text("کراچی ڈویژن ",
                                  style: TextStyle(
                                      height: TextHieght,
                                      fontSize: 15,
                                      fontFamily: 'Noto'))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: hieght,
                              width: 100,
                              child: ElevatedButton(
                                  style: style,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              schedulerForm()),
                                    );
                                  },
                                  child: const Text("زون اے",
                                      style: TextStyle(
                                          height: TextHieght,
                                          fontSize: 15,
                                          fontFamily: 'Noto'))),
                            ),
                            SizedBox(
                              height: hieght,
                              width: 100,
                              child: ElevatedButton(
                                  style: style,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              schedulerForm()),
                                    );
                                  },
                                  child: const Text(
                                    "زون بی",
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 15,
                                        fontFamily: 'Noto'),
                                  )),
                            ),
                            SizedBox(
                              height: hieght,
                              width: 100,
                              child: ElevatedButton(
                                  style: style,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              schedulerForm()),
                                    );
                                  },
                                  child: const Text("زون سی",
                                      style: TextStyle(
                                          height: TextHieght,
                                          fontSize: 15,
                                          fontFamily: 'Noto'))),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: borderColor, width: 0.0),
                      ),
                      labelText: 'رپورٹ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colorss().color1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: hieght,
                              width: 120,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colorss().color1,
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    shape: StadiumBorder(),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              schedulerForm()),
                                    );
                                  },
                                  child: Text("ماہانہ رپورٹ",
                                      style: TextStyle(
                                          height: TextHieght,
                                          fontSize: 15,
                                          fontFamily: 'Noto'))),
                            ),
                            SizedBox(
                              height: hieght,
                              child: VerticalDivider(
                                color: Colors.white,
                                thickness: 2,
                                // indent: 5,
                                endIndent: 0,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              height: hieght,
                              width: 130,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colorss().color1,
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    shape: StadiumBorder(),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              schedulerForm()),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    child: Text("ہفتہ وار رپورٹ",
                                        style: TextStyle(
                                            height: TextHieght,
                                            fontSize: 15,
                                            fontFamily: 'Noto')),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: InputDecorator(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide:
                              BorderSide(color: borderColor, width: 0.0),
                        ),
                        labelText: 'شعبه جات',
                        labelStyle: TextStyle(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text('دعوت و اصلاح ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text('اسکائ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text('سوشل میڈیا ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text('خواتین ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text(' طلباء ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text('ڈیف ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text('میڈیکل ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text(' آڈٹ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: hieght,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            schedularCalender()),
                                  );
                                },
                                child: Text('اساتذہ ',
                                    style: TextStyle(
                                        height: TextHieght,
                                        fontSize: 13,
                                        fontFamily: 'Noto')),
                                style: style,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
