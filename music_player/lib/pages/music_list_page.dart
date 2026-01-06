// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:music_player/pages/music_player_page.dart';
import 'package:music_player/utils/colors.dart';
import 'package:music_player/widgets/neumorphic_circle_widget.dart';

class MusicListPage extends StatefulWidget {
  const MusicListPage({Key? key}) : super(key: key);

  @override
  State<MusicListPage> createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage> {
  int selectedIndex = 0;

  List<List<String>> musicList = [
    ['Low Life', 'Brand New Life'],
    ['Hymn of the Weekend', 'Feat. Some Band'],
    ['The Scientist', 'Tune of the world'],
    ['Yellow', 'Live in Buenos Aires'],
    ['Fix You', 'Yuri\'s Piano'],
    ['Viva La Vida', 'Volcanic Orchestra'],
    ['Paradise', 'Night Life'],
    ['Adventure of a Lifetime', 'Group of People'],
    ['A Sky Full of Stars', 'Futuristic Polar Bears'],
    ['Magic', 'Coldplay'],
  ];

  Widget _buildTopHeading(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 45,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Music Player',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                inherit: false,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildMusicName(String title, String subtitle) {
    return [
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white.withOpacity(0.5),
          inherit: false,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 2),
      Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white.withOpacity(0.2),
          inherit: false,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    ];
  }

  Widget _buildTopBar(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => MusicPlayerPage(),
          ),
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.39,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: NeumorphicCircleWidget(
                height: 40,
                width: 40,
                child: Icon(
                  CupertinoIcons.heart_fill,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: NeumorphicCircleWidget(
                borderWidth: 10,
                borderColor: Color.fromARGB(255, 36, 36, 36),
                height: MediaQuery.of(context).size.width * 0.39,
                width: MediaQuery.of(context).size.width * 0.39,
                child: Image.asset(
                  'images/music_disk.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: NeumorphicCircleWidget(
                height: 40,
                width: 40,
                child: Icon(
                  Icons.menu_rounded,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              MusicPlayerColors.backgroundGrey,
              const Color.fromARGB(255, 33, 36, 40),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              _buildTopHeading(context),
              const SizedBox(height: 40),
              _buildTopBar(context),
              const SizedBox(height: 40),
              for (int i = 0; i < musicList.length; i++) _buildMusicTile(i),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMusicTile(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 85,
        margin: const EdgeInsets.only(bottom: 17),
        decoration: BoxDecoration(
          color: index == selectedIndex
              ? MusicPlayerColors.neumorphismInsideDarkGrey
              : null,
          borderRadius: BorderRadius.circular(25),
          border: index == selectedIndex
              ? Border.all(
                  color: MusicPlayerColors.neumorphismOutsideLightGrey,
                  width: 1,
                )
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildMusicName(
                        musicList[index][0], musicList[index][1]),
                  ),
                ),
              ),
              NeumorphicCircleWidget(
                height: 27,
                width: 27,
                depth: 2,
                intensity: 0.3,
                borderWidth: 6,
                color: index == selectedIndex ? MusicPlayerColors.red : null,
                child: Icon(
                  index == selectedIndex
                      ? Icons.pause_rounded
                      : Icons.play_arrow_rounded,
                  size: 18,
                  color: index == selectedIndex ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
