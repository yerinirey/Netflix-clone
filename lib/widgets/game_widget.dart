import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 모바일게임 헤더
        // SizedBox height: 30속성을 넣어뒀었음 참고. innerPadding때문에
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "모바일 게임",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              child: Row(
                children: [
                  Text(
                    "내가 찜한 리스트",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        //모바일게임 요소
        SizedBox(
          height: 154,
          child: gameList(),
        ),
      ],
    );
  }
}

ListView gameList() {
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
                // 게임 이름
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
                // 게임 장르
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
