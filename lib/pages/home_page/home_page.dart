import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          if (isTapped != true) {
            setState(() {
              isTapped = true;
            });
          }
        },
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/jar.png"),
                fit: BoxFit.contain,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    margin: EdgeInsets.only(bottom: isTapped ? 80 : 300),
                    duration: const Duration(milliseconds: 1200),
                    curve: Curves.bounceOut,
                    height: 150,
                    width: 220,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/note1.png'))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
