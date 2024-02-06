import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/game_widget.dart';
import 'package:netflixclone/widgets/movie_widget.dart';
import 'package:netflixclone/widgets/will_like_movie_widget.dart';

class MainScreen extends StatefulWidget {
  final int id;

  const MainScreen({
    super.key,
    required this.id,
  });
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // var scroll = ScrollController();
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Hello, Account ${widget.id}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: const [
            IconButton(
              icon: Icon(
                Icons.connected_tv_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        // 기본 제공 애니메이션 삭제
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (int idx) {},
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 34), label: "홈"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.playlist_play, size: 34), label: "New & Hot"),
            BottomNavigationBarItem(
                icon: Hero(
                  tag: widget.id,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.red.shade700,
                                Colors.red.shade400,
                              ]),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        width: 34,
                        height: 34,
                      ),
                      const Icon(
                        Icons.accessibility_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                label: "나의 넷플릭스"),
          ],
          iconSize: 26,
          selectedItemColor: Colors.white,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.grey.shade400,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              // 시리즈, 영화, 카테고리 토글
              height: 32,
              child: Row(
                children: [
                  const SizedBox(width: 14),
                  OutlinedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 0.8,
                      ),
                    ),
                    child: const Text(
                      "시리즈",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 0.8,
                      ),
                    ),
                    child: const Text(
                      "영화",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 0.8,
                      ),
                    ),
                    child: const Row(children: [
                      Text(
                        "카테고리",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              // 가장 크게 뜨는 영화
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/GgomiPaw.jpg"),
                          fit: BoxFit.cover,
                        ),
                        // color: Colors.blueGrey,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ]),
                    height: 500,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Column(
                      children: [
                        // 제목, 장르, 재생/찜
                        const Text(
                          "일타 스캔들",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 52,
                            height: 1,
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "유쾌 발랄 · 로맨틱 · 코미디 · 부모 되기 · 한국 작품",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(160, 0),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                  horizontal: 10.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "재생",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(160, 0),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                  horizontal: 10.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor: Colors.grey.shade800,
                              ),
                              onPressed: () {},
                              child: const Row(children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "내가 찜한 리스트",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Game(),
                  SizedBox(
                    height: 20,
                  ),
                  WillLikeMovie(
                    header: "마음에 쏙 드실 거에요",
                  ),
                  SizedBox(height: 20),
                  Movie(header: "가볍게 부담 없이!"),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(color: Colors.red),
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
