import 'package:sql_conn/sql_conn.dart';


dbConnect() async {
  await SqlConn.connect(
      ip: "192.168.1.114",
      port: "1433",
      databaseName: "rabta",
      username: "sch",
      password: "asd123");

  print("Database connectivity : ${SqlConn.isConnected}");
}

// checkConnection() {
//   if (SqlConn.isConnected) {
//     print("connection gotted0");
//     return true;
//   } else {
//     print("connection nooooooot gotted0");
//     return false;
//   }
// }
