import 'package:air_bnb_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:stretchy_header/stretchy_header.dart';

HeaderData buildHeaderData(BuildContext context, Property property) {
  return HeaderData(
    highlightHeaderAlignment: HighlightHeaderAlignment.top,
    highlightHeader: Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              iconSize: 30,
              icon: Icon(Icons.clear),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => print('Favorite tapped'),
              iconSize: 30,
              icon: Icon(Icons.favorite_border),
              color: Colors.white,
            )
          ],
        ),
      ),
    ),
    blurContent: false,
    headerHeight: 400,
    overlay: Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFf2f1ea),
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
        ),
        transform: Matrix4.translationValues(-25, -25, 0),
        height: 45,
        width: 175,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
              Text(
                'TAKE A TOUR',
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    header: Hero(
      tag: property.name,
      child: Image.asset(property.imageUrl, fit: BoxFit.cover),
    ),
  );
}
