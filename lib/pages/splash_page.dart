import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedulerapp/connectdb/connection.dart';
import 'package:schedulerapp/pages/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  int splashtime = 3;

  @override
  void initState() {
    dbConnect();
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Login();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                //vertically align center
                children: <Widget>[
                  Container(
                    child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset("assets/mmlo.png")),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    //margin top 30
                    child: Text(
                      "جدول براۓ تنظیم",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text("کراچی کے تمام تنظیمی جدول ",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 10,
                        )),
                  ),
                ])));
  }
}
