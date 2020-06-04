import 'package:air_bnb_ui/data/data.dart';
import 'package:flutter/material.dart';

class PropertyInfo extends StatelessWidget {
  final Property property;
  PropertyInfo({this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            property.name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${property.nGuests} guests',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  '${property.nBedrooms} bedrooms',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  '${property.nBeds} beds',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  '${property.nBathrooms} bathrooms',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            property.description,
            style: TextStyle(
              height: 1.5,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}
