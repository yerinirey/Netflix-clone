import 'package:flutter/material.dart';
import 'package:netflixclone/screens/loading_screen.dart';

class AccountBox extends StatelessWidget {
  final int id;

  const AccountBox({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    MaterialColor boxcolor = Colors.deepPurple;
    switch (id) {
      case 1:
        boxcolor = Colors.blue;
      case 2:
        boxcolor = Colors.yellow;
      case 3:
        boxcolor = Colors.teal;
      case 4:
        boxcolor = Colors.red;
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => Loading(id: id)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: id,
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
                  width: 100,
                  height: 100,
                ),
                const Icon(
                  Icons.accessibility_rounded,
                  color: Colors.white,
                  size: 50,
                )
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              "Account $id",
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
