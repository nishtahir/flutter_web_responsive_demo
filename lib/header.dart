import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: Text(
              "Lifestyle Company",
              style: TextStyle(fontSize: 48),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Wrap(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text("Women"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Mens"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Kids"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Home"),
              ),
              SizedBox(
                height: 48,
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Search for products or brands",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
