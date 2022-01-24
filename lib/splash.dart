import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:appnews_19710083/main.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 8);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/aku.jpg'),
          ),
          Text(
            "FEBRI MUAYANAH",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.black,
              fontSize: 50,
            ),
          ),
          Text(
            "FLUTTER DEVELOVER",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              letterSpacing: 3.0,
            ),
          ),
          SizedBox(
            height: 100.0,
            width: 200.0,
            child: Divider(
              color: Colors.blueAccent,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 50.0),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
              ),
              title: Text(
                "NPM : 19710083",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 50.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blueAccent,
              ),
              title: Text(
                "Alamat : JL. AMD KKOMP> WARINGIN PERMAI ",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 50.0),
            child: ListTile(
              leading: Icon(CupertinoIcons.house_alt, color: Colors.blueAccent),
              title: Text(
                "TTL : Banjarmasin 08 - 02 - 2001",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
// class cardProfile extends StatelessWidget {
//   const cardProfile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       ),
//     );
//   }
// }

