import 'package:dsc_world/models/continent.dart';
import 'package:dsc_world/utils/commons.dart';

import 'package:flutter/material.dart';

class CountrieyDetailsScreen extends StatefulWidget {
  Country country;
  CountrieyDetailsScreen(this.country);
  @override
  _CountrieyDetailsScreenState createState() => _CountrieyDetailsScreenState();
}

class _CountrieyDetailsScreenState extends State<CountrieyDetailsScreen> {
  List<String> countrs = [];
  double _height = 0, _width = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget _buildRowItem({@required String title, @required String value}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: (_width - 40) / 2,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: (_width - 40) / 2,
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            widget.country.name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15),
              child: InkWell(
                  child: Icon(
                    !widget.country.isFav
                        ? Icons.favorite_border
                        : Icons.favorite,
                    color: Colors.white,
                  ),
                  onTap: () {
                    if (!widget.country.isFav)
                      setState(() {
                        widget.country.isFav = true;
                        Commons.favCountries.add(widget.country);
                      });
                    else if (widget.country.isFav)
                      setState(() {
                        widget.country.isFav = false;
                        Commons.favCountries.remove(widget.country);
                      });
                  }),
            ),
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  //  color: Colors.white,
                  width: _width * 0.6,
                  height: _width * 0.5,
                  child: Text(
                    widget.country.emoji,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 200),
                  )),
              SizedBox(
                height: 20,
              ),
              _buildRowItem(title: "Name : ", value: widget.country.name),
              _buildRowItem(
                  title: "Native Name : ", value: widget.country.native),
              _buildRowItem(title: "phone : ", value: widget.country.phone),
              _buildRowItem(
                  title: "Currency : ", value: widget.country.currency),
              _buildRowItem(title: "Capital : ", value: widget.country.capital),
            ],
          ),
        ));
  }
}
