import 'package:dsc_world/models/continent.dart';
import 'package:dsc_world/ui/countryDetails.dart';

import 'package:flutter/material.dart';

class CountriesScreen extends StatefulWidget {
  Map<String, Country> countries;
  String continent;
  CountriesScreen(this.countries, this.continent);
  @override
  _CountriesScreenState createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  List<String> countrs = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadCountries();
  }

  loadCountries() {
    setState(() {
      widget.countries.values
          .where((element) => element.continent == widget.continent)
          .forEach((element) {
        countrs.add(element.name);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          widget.continent,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: countrs.length != 0 ? countrs.length : 0,
          itemBuilder: (ctx, i) => ListTile(
                title: Text(countrs[i]),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => CountrieyDetailsScreen(
                              widget.countries.values.firstWhere(
                                  (element) => element.name == countrs[i]))));
                },
              )),
    );
  }
}
