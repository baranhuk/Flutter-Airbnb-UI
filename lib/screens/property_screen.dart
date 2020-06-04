import 'package:air_bnb_ui/data/data.dart';
import 'package:air_bnb_ui/widgets/add_dates.dart';
import 'package:air_bnb_ui/widgets/build_header_data.dart';
import 'package:air_bnb_ui/widgets/host_info.dart';
import 'package:air_bnb_ui/widgets/property_image_grid.dart';
import 'package:air_bnb_ui/widgets/property_info.dart';
import 'package:flutter/material.dart';
import 'package:stretchy_header/stretchy_header.dart';

class PropertyScreen extends StatelessWidget {
  final Property property;
  PropertyScreen({this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StretchyHeader.singleChild(
        headerData: buildHeaderData(context, property),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PropertyInfo(property: property),
              Divider(),
              PropertyImageGrid(property: property),
              Divider(),
              HostInfo(property: property),
            ],
          ),
        ),
      ),
      bottomSheet: AddDates(property: property),
    );
  }
}
