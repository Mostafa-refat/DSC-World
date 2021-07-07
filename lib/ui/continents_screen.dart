import 'dart:convert';

import 'package:dsc_world/models/continent.dart';
import 'package:dsc_world/ui/countries.dart';
import 'package:dsc_world/ui/widgets/appdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;

import 'package:http/http.dart';

class ContinentsScreen extends StatefulWidget {
  @override
  _ContinentsScreenState createState() => _ContinentsScreenState();
}

class _ContinentsScreenState extends State<ContinentsScreen> {
  AllData result;
  List<String> countries = [];
  List<String> countriesKeys = [];

  loadJson() async {
    var data = await rootBundle.loadString('assets/json/data.json');
    var my_data = jsonDecode(data);

    setState(() {
      result = AllData.fromJson(my_data);
      result.continents.toJson().forEach((key, value) {
        countries.add(value);
        countriesKeys.add(key);
      });
    });

    print(result);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await loadJson();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount:
              countries.length != 0 ? result.continents.toJson().length : 0,
          itemBuilder: (ctx, i) => ListTile(
                title: Text(countries[i]),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => CountriesScreen(
                              result.countries, countriesKeys[i])));
                },
              )),
    );
  }
}
