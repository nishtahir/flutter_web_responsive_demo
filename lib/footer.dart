import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Wrap(
        spacing: 64,
        children: <Widget>[
          makeFooterWidget(),
          makeFooterWidget(),
          makeFooterWidget(),
        ],
      ),
    );
  }

  Widget makeFooterWidget() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
                    Text("The Company", style: TextStyle(fontSize: 24),),

          SizedBox(
            height: 16,
          ),
          Text("> About us"),
          SizedBox(
            height: 16,
          ),
          Text("> Site map"),
          SizedBox(
            height: 16,
          ),
          Text("> Affiliate Programme"),
          SizedBox(
            height: 16,
          ),
          Text("> Customer reviews"),
          SizedBox(
            height: 16,
          ),
          Text("> Designer Brand Directory"),
        ],
      ),
    );
  }
}
