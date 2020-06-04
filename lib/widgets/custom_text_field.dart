import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 25),
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                offset: Offset(0.0, 0.1),
                blurRadius: 10,
              )
            ],
          ),
          height: 50,
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 2),
            child: TextField(
              controller: controller,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: 'Try "Tokyo"',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
                border: InputBorder.none,
              ),
              onTap: () => print('Text field tapped'),
            ),
          ),
        ),
      ),
    );
  }
}
