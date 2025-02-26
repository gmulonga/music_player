import 'package:flutter/material.dart';
import 'package:music_player/constants.dart';
import 'package:music_player/widgets/searchBar.dart';
import 'package:music_player/widgets/musicCard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Music Player",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
            Searchbar(
              controller: searchController,
            ),
            SizedBox(
              height: 10,
            ),
            musicCard(),
            musicCard(),
            musicCard(),
            musicCard(),
            musicCard(),
          ],
        ),
      ),
    );
  }
}
