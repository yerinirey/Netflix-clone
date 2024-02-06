import 'package:flutter/material.dart';

class GameBox extends StatelessWidget {
  const GameBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        clipBehavior: Clip.none,
        shrinkWrap: true, // limit height, 리스트뷰 크기 고정
        primary: false, // disable scrolling
        separatorBuilder: (context, idx) {
          return const SizedBox(width: 8);
        },
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, idx) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("lib/assets/GgomiPaw.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 114,
                width: 114,
                child: null,
              ),
              const SizedBox(
                width: 114,
                child: Text(
                  "GTA: San Andreas-데피니티브 에디션",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.1,
                  ),
                ),
              ),
              SizedBox(
                width: 114,
                child: Text(
                  "액션",
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 11,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
