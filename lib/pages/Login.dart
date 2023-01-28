import 'package:flutter/material.dart';
import 'package:schedulerapp/main.dart';
import 'package:schedulerapp/pages/HomePage.dart';

import '../connectdb/connection.dart';
import '../model/login_model.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String uname = "";
  String password = "";
  bool changeButton = false;
  String loginmessage = "";
  var isEmpty = false;
  final _formKey = GlobalKey<FormState>();
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 3),
      () => setState(() => _isLoading = false),
    );
  }

  loginAccessed(BuildContext context, String message) async {
    setState(() {
      isEmpty = false;
    });

    var confirm = await loginModel(
      password: password,
      username: uname,
    ).getLoginData();

    confirm
        ? Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage()))
        : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 0.0,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(bottom: 305.0),
            backgroundColor: Colors.transparent,
            content: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(50)),
              height: 30,
              margin: EdgeInsets.symmetric(horizontal: 20),
              // width: 50,
              child: Center(
                  child: Text(
                " صارف کا نام یا پاسورڈ کا اندراج غلط ہے",
                style: TextStyle(
                    fontFamily: 'Noto', color: Colors.white, fontSize: 10),
              )),
            )));
    // }
  }

  // @override
  // void initState() {
  //   // dbConnect();
  // }

  var fn1 = FocusNode();
  var fn2 = FocusNode();
  var onFocus = true;
  double height = 250.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: height,
                  child: Center(
                      child: Image(
                    image: AssetImage(
                      'assets/mmlo.png',
                    ),
                    height: MediaQuery.of(context).viewInsets.bottom == 0
                        ? size.height * 0.55
                        : size.height * 0.15,
                  )),
                ),
                // const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "خوش آمدید",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 18, 39, 19),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(loginmessage),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: <Widget>[
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        // return "";
                                      }
                                      return null;
                                    },
                                    focusNode: fn1,
                                    style: TextStyle(fontSize: 15, height: 2),
                                    textAlign: TextAlign.center,
                                    onChanged: (value) => {uname = value},
                                    decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.all(10),
                                        // floatingLabelAlignment:
                                        //     FloatingLabelAlignment.center,
                                        floatingLabelStyle:
                                            const TextStyle(fontSize: 20),
                                        alignLabelWithHint: true,
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelText: 'صارف کا نام',
                                        hintText: "صارف کا نام یہاں درج کریں۔",
                                        hintStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 202, 202, 202)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: !isEmpty
                                                    ? Colors.grey
                                                    : Colors.red),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: !isEmpty
                                                    ? Colors.grey
                                                    : Colors.red),
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          // return "";
                                        }
                                        return null;
                                      },
                                      focusNode: fn2,
                                      onChanged: (value) => {password = value},
                                      style: TextStyle(fontSize: 15, height: 2),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(10),
                                          // floatingLabelAlignment:
                                          //     FloatingLabelAlignment.center,
                                          floatingLabelStyle:
                                              const TextStyle(fontSize: 20),
                                          // alignLabelWithHint: true,
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          labelText: 'پاس ورڈ',
                                          hintText: "پاس ورڈ یہاں درج کریں",
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 202, 202, 202)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: !isEmpty
                                                      ? Colors.grey
                                                      : Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: !isEmpty
                                                      ? Colors.grey
                                                      : Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(50))),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                    child: Container(
                                  height: 50,
                                  width: 170,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 80),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colorss().color1),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      elevation: 0.0,
                                      backgroundColor: Colorss().color1,
                                    ),
                                    onPressed: () {
                                      if (uname.isEmpty ||
                                          uname == null && password == null ||
                                          password.isEmpty) {
                                        setState(() {
                                          isEmpty = true;
                                        });
                                      } else {
                                        _isLoading ? null : _onSubmit();
                                        setState(() {
                                          isEmpty = false;
                                        });
                                        loginAccessed(context, "message");
                                      }
                                    },
                                    child: _isLoading
                                        ? const CircularProgressIndicator(
                                            color: Colors.white,
                                          )
                                        : const Center(
                                            child: Text(
                                              "لاگ ان کریں",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                  ),
                                )
                                    //   const Center(
                                    //     child: Text(
                                    //       "لاگ ان کریں",
                                    //       style: TextStyle(
                                    //         fontSize: 15,
                                    //         color: Colors.white,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
