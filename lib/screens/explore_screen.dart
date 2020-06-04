import 'package:air_bnb_ui/data/data.dart';
import 'package:air_bnb_ui/widgets/category_scroll.dart';
import 'package:air_bnb_ui/widgets/custom_text_field.dart';
import 'package:air_bnb_ui/widgets/greeting.dart';
import 'package:air_bnb_ui/widgets/promo_text.dart';
import 'package:air_bnb_ui/widgets/property_grid.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfefefe),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ListView(
          children: <Widget>[
            CustomTextField(),
            Greeting(name: 'Ross'),
            CategoryScroll(categories: categories),
            PromoText(),
            PropertyGrid(),
          ],
        ),
      ),
    );
  }
}
