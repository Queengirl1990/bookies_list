import 'package:flutter/material.dart';
import '../../widgets/bookieslist-widgets.dart'; 
import '../../styles/farbcodes.dart';

//zurück und Add Button

AppBar customAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: darkRed,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      const Icon(
        Icons.add,
        color: Colors.white,
      ),
      myCircularAvatar(), 
    ],
  );
}
