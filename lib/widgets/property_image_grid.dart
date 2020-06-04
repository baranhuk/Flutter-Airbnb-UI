import 'package:air_bnb_ui/data/data.dart';
import 'package:flutter/material.dart';

class PropertyImageGrid extends StatelessWidget {
  final Property property;
  PropertyImageGrid({this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Tour this house',
            style: TextStyle(
              letterSpacing: -1,
              wordSpacing: -1,
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 250,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              removeBottom: true,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: property.images
                    .map(
                      (image) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 115,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(image, fit: BoxFit.cover),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
