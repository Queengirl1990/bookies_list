import 'package:flutter/material.dart';
import 'styles.dart';

class MyDividerWithIcons extends StatelessWidget {
  const MyDividerWithIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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


Widget myCircularAvatar() {
  return Row(
    children: [
      const SizedBox(width: 20),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: ClipOval(
          child: Image.asset(
            'assets/images/avatar.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}