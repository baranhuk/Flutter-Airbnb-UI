import 'package:air_bnb_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddDates extends StatelessWidget {
  final Property property;
  AddDates({this.property});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 15, 25, 0),
        height: 110,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Add dates for prices',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 10,
                        color: Color(
                          0xFF904668,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        property.review,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF904668),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        '(${property.nReviews})',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 150,
              child: FlatButton(
                onPressed: () => print('Add dates button tapped'),
                color: Color(0xFF904668),
                child: Text(
                  'Add dates',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
