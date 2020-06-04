import 'package:air_bnb_ui/data/data.dart';
import 'package:air_bnb_ui/screens/property_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class PropertyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        padding: EdgeInsets.all(25),
        crossAxisSpacing: 15,
        mainAxisSpacing: 20,
        childAspectRatio: 0.85,
        children: properties
            .map(
              (property) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.downToUp,
                      child: PropertyScreen(
                        property: property,
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Hero(
                        tag: property.name,
                        child: Container(
                          height: 115,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: Image.asset(
                              property.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF904668),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(3),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(2.5),
                                    child: Text(
                                      'PLUS',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  property.location.toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFF904668),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              property.name,
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
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
                                  color: Color(0xFF904668),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  property.review,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey[800],
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
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
