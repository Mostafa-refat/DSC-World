import 'package:dsc_world/ui/countryDetails.dart';
import 'package:dsc_world/ui/widgets/appdrawer.dart';
import 'package:dsc_world/utils/commons.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Favourites",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: Commons.favCountries.length != 0
              ? Commons.favCountries.length
              : 0,
          itemBuilder: (ctx, i) => ListTile(
                title: Text(Commons.favCountries[i].name),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => CountrieyDetailsScreen(
                                  Commons.favCountries.firstWhere((element) =>
                                      element.name ==
                                      Commons.favCountries[i].name))))
                      .then((value) {
                    setState(() {});
                  });
                },
              )),
    );
  }
}
