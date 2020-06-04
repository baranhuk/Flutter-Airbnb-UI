import 'package:air_bnb_ui/data/data.dart';
import 'package:flutter/material.dart';

class HostInfo extends StatelessWidget {
  final Property property;
  HostInfo({this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'From your host',
            style: TextStyle(
              letterSpacing: -1,
              wordSpacing: -1,
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 5),
          Text(
            property.hostWelcome,
            style: TextStyle(
              height: 1.5,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(property.hostImageUrl),
                radius: 30,
              ),
              SizedBox(width: 10),
              Text(
                'Hosted by ${property.hostName}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
