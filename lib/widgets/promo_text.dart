import 'package:flutter/material.dart';

class PromoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Summer getaways in Europe',
            style: TextStyle(
              letterSpacing: -1,
              wordSpacing: -1,
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Browse beautiful places to stay with pools',
            style: TextStyle(
              fontSize: 16.5,
            ),
          )
        ],
      ),
    );
  }
}
