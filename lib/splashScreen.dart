import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterapp/HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  int _currentIndex = 0;
  List<String> _words = [ 'Bonjour', 'Namaskar','Hola' , 'Hello'];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_currentIndex < _words.length - 1) {
        setState(() {
          _currentIndex++;
        });
      } else {
        _timer.cancel();
        // Navigate to the next screen after the splash screen.
        // Replace `NextScreen()` with your desired screen.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => MyHomePage()),
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.yellow, Colors.green, Colors.red],
          ),
        ),
        child: Center(
          child: Text(
            _words[_currentIndex],
            style: TextStyle(fontSize: 48, color: Colors.white,fontStyle: FontStyle.italic
            ),
          ),
        ),
      ),
    );
  }
}
