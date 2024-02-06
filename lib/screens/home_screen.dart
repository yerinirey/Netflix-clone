import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/account_box_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "넷플릭스를 시청할 프로필을 선택하세요. ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                "변경",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              children: [
                AccountBox(id: 1),
                AccountBox(id: 2),
                AccountBox(id: 3),
                AccountBox(id: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
