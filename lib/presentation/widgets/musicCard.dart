import 'package:flutter/material.dart';
import 'package:music_player/constants.dart';
import 'package:music_player/presentation/screens/play_music_page.dart';

class musicCard extends StatelessWidget {
  const musicCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "3.39",
                      style: TextStyle(fontSize: 13, color: kGrey),
                    ),
                    Text(
                      "Music Name",
                      style: TextStyle(fontSize: 15, color: kBlack),
                    ),
                    Text(
                      "Author Name",
                      style: TextStyle(fontSize: 13, color: kGrey),
                    )
                  ],
                )
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayMusicPage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: kGrey,
                ))
          ],
        ),
      ),
    );
  }
}
