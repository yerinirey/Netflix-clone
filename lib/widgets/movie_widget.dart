import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

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
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    image: AssetImage("lib/assets/GgomiPaw.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 160,
                width: 114,
                child: null,
              ),
            ],
          );
        });
  }
}
