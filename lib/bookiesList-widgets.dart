import 'package:flutter/material.dart';
import 'styles.dart';

class MyDividerWithIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          child: Divider(
            color: snowWhite,
            height: 20,
            thickness: 2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite, size: 20, color: lightGrey),
            SizedBox(width: 10),
            Icon(Icons.favorite, size: 20, color: lightGrey),
            SizedBox(width: 10),
            Icon(Icons.favorite, size: 20, color: lightGrey),
          ],
        ),
        SizedBox(
          width: 320,
          child: Divider(
            color: snowWhite,
            height: 20,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}