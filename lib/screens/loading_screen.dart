import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflixclone/screens/main_screen.dart';
// import 'package:netflixclone/widgets/account_box_widget.dart';

class Loading extends StatefulWidget {
  final int id;
  const Loading({
    super.key,
    required this.id,
  });

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => MainScreen(id: widget.id)));
    });
  }

  @override
  Widget build(BuildContext context) {
    MaterialColor boxcolor = Colors.deepPurple;
    switch (widget.id) {
      case 1:
        boxcolor = Colors.blue;
      case 2:
        boxcolor = Colors.yellow;
      case 3:
        boxcolor = Colors.teal;
      case 4:
        boxcolor = Colors.red;
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: widget.id,
              child: Stack(
                // 두 개 이상의 위젯을 겹칠 수 있게 해준다.
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            boxcolor.shade700,
                            boxcolor.shade400,
                          ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 140,
                    height: 140,
                  ),
                  const Icon(
                    Icons.accessibility_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            CircularProgressIndicator(color: boxcolor),
          ],
        ),
      ),
    );
  }
}
