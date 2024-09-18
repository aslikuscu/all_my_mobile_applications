import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  VideoSection({super.key});
  List videoList = [
    'introoduction to flutter',
    'installing flutter on windows',
    'setup emulator on windows',
    'creating our first app'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: index == 0
                    ? Color(0xFF674AEF)
                    : Color(0xFF674AEF).withOpacity(0.6)),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}
