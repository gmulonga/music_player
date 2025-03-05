import 'package:flutter/material.dart';
import 'package:music_player/constants.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayMusicPage extends StatefulWidget {
  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Now Playing",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 48),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Colors.blue,
                height: screenHeight * 0.35,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Song Name",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text("Name")
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border))
                ],
              ),
            ),
            // StreamBuilder<Duration>(
            //   stream: _durationState,
            //   builder: (context, snapshot) {
            //     return ProgressBar(
            //       progress: snapshot.data ?? Duration.zero,
            //       buffered: _audioPlayer.bufferedPosition,
            //       total: _audioPlayer.duration ?? Duration.zero,
            //       onSeek: (duration) {
            //         _audioPlayer.seek(duration);
            //       },
            //     );
            //   },
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.replay),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: kBlack,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.pause),
                ),
              ],
            ),
            //   add the audio progress here
          ],
        ),
      ),
    );
  }
}
