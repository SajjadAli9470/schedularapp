import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:sql_conn/sql_conn.dart';

class loginModel {
  String username;
  String password;

  loginModel({required this.username, required this.password});

  Future<bool> getLoginData() async {
    bool confirm = false;
    if (SqlConn.isConnected && username.isNotEmpty && password.isNotEmpty) {
      var res = await SqlConn.readData(
          "select pass from userlogin where username='$username'");
      print(res != null);
      print(res);
      var getencryptedpassdb = jsonDecode(res)[0]['pass'];

      (getencryptedpassdb == getEncryptedPassword(password).toString())
          ? confirm = true
          : confirm = false;
    }

    return confirm;
  }

  getEncryptedPassword(String pass) {
    var bytes = utf8.encode(pass);
    var hash = sha1.convert(bytes);
    return hash;
  }
}
