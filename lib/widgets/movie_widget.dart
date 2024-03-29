import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  final String header;
  const Movie({
    super.key,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 156,
          child: movieList(),
        ),
      ],
    );
  }
}

ListView movieList() {
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
              height: 156,
              width: 114,
              child: null,
            ),
          ],
        );
      });
}
