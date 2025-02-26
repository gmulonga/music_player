import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: 10),child: Text("Music Player", style: TextStyle(fontSize: 16),),),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu,),),
              ],
            ),
          )
        ],
      ),),
    );
  }
}
