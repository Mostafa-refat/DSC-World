import 'package:dsc_world/ui/favourites_screen.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  AppBar appBar = AppBar();

  bool _intialRun = true;

  @override
  Widget build(BuildContext context) {
    double height = appBar.preferredSize.height;

    return Drawer(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: height,
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/images/ww.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => HomeScreen(0)));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favourites'),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => HomeScreen(1)));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
