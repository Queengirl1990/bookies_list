import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          FirstStep(),
        ]),
      ),
    );
  }
}

class FirstStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFAC5859)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 32,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 230,
                top: 5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/20x20"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.20,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/20x20"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.20,
                      child: Text(
                        '74 %',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 10,
                          fontFamily: 'Futura',
                          fontWeight: FontWeight.w500,
                          height: 0.22,
                        ),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/20x20"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      '15:33',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFABB0BA),
                        fontSize: 10,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        height: 0.22,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 5,
                top: 5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'o2 - de',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFABB0BA),
                        fontSize: 10,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        height: 0.22,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/20x20"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/20x20"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 145,
          top: 81,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/60x60"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: 80,
          top: 261,
          child: Container(
            padding: const EdgeInsets.only(top: 3, left: 17, right: 62),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFC7C9D9)),
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 121,
                  height: 22,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w400,
                      height: 0.22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 80,
          top: 314,
          child: Container(
            padding: const EdgeInsets.only(top: 3, left: 17, right: 62),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFC7C9D9)),
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 121,
                  height: 22,
                  child: Text(
                    'Passwort',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w400,
                      height: 0.22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 175,
          top: 343,
          child: SizedBox(
            width: 107,
            height: 22,
            child: Text(
              'Passwort vergessen?',
              style: TextStyle(
                color: Color(0xFF090706),
                fontSize: 10,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w400,
                height: 0.22,
              ),
            ),
          ),
        ),
        Positioned(
          left: 83,
          top: 393,
          child: Container(
            padding: const EdgeInsets.only(top: 3, left: 9, right: 6),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFC7C9D9),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFC7C9D9)),
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 185,
                  height: 22,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w700,
                      height: 0.15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 83,
          top: 490,
          child: Container(
            padding: const EdgeInsets.only(top: 3, left: 7),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFC7C9D9),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFC7C9D9)),
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 193,
                  height: 22,
                  child: Text(
                    'Registrierung',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w700,
                      height: 0.15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 83,
          top: 531,
          child: Container(
            width: 200,
            height: 25,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFC7C9D9),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFC7C9D9)),
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 7,
                  top: 3,
                  child: SizedBox(
                    width: 193,
                    height: 22,
                    child: Text(
                      'Weiter mit Google',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w700,
                        height: 0.15,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 5,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/15x15"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 56,
          top: 653,
          child: Container(
            width: 247,
            height: 94,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/247x94"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFC7C9D9)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 254,
          top: 319,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/15x15"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
