import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Wrap(
          children: <Widget>[
            makeCard(4, maxWidth: 800),
            makeCard(5, maxWidth: 800),
            makeCard(2),
            makeCard(3),
            makeCard(6),
            makeCard(7),
            // makeCard(4, maxWidth: 600),
            // makeCard(5, maxWidth: 600),
            makeCard(2),
            makeCard(3),
            makeCard(6),
            makeCard(7),
          ],
        ),
      ),
    );
  }

  Widget makeCard(int index, {maxWidth= 800, percent = 0.8}) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: FractionallySizedBox(
        widthFactor: percent,
        child: Card(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://placeimg.com/640/360/people/$index",
                  fit: BoxFit.scaleDown,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Text("The Outlet"),
                    ),
                    Flexible(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("Express Delivery"),
                          SizedBox(height: 10),
                          Text(
                            "Upto 100% off",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          elevation: 0,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
