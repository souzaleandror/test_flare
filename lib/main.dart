import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: FlareActor(
            "assets/Gear.flr",
            animation: "spin",
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    });
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Flutter + Flare",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 200,
            height: 200,
            child: FlareActor(
              "assets/Heart.flr",
              animation: "pulse",
            ),
          ),
        ],
      ),
    );
  }
}

/*
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _anim = "spin1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_anim == "spin1")
              _anim = "spin2";
            else
              _anim = "spin1";
          });
        },
        child: Container(
          width: 200,
          height: 200,
          child: FlareActor("assets/Gear.flr", animation: _anim, isPaused: true,),
        ),
      ),
    ));
  }
}
*/
