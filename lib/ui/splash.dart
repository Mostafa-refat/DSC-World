import 'package:dsc_world/ui/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _height = 0, _width = 0;

  Future delayscreen() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    delayscreen().then((value) => Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (ctx) => HomeScreen(0)), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
        //   backgroundColor: Colors.white,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/ww.png',
            fit: BoxFit.cover,
            // color: Colors.transparent,
            height: _width * 0.7,
            width: _width * 0.7,
          ),
        ],
      ),
    ));
  }
}
