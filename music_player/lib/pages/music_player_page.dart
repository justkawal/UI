// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:music_player/utils/colors.dart';
import 'package:music_player/widgets/neumorphic_circle_widget.dart';
import 'package:music_player/widgets/neumorphic_progress_widget.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  Widget _buildMusicDisk(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: NeumorphicCircleWidget(
            borderWidth: 24,
            borderColor: Color.fromARGB(255, 41, 41, 41),
            height: MediaQuery.of(context).size.width * 0.69,
            width: MediaQuery.of(context).size.width * 0.69,
            child: Image.asset(
              'images/music_disk.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.pop(context);
      },
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: NeumorphicCircleWidget(
              height: 50,
              width: 50,
              child: Icon(
                Icons.arrow_back,
                size: 28,
                color: Colors.grey,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 45,
              alignment: Alignment.bottomCenter,
              child: Text(
                'PLAYING NOW',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  inherit: false,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NeumorphicCircleWidget(
              height: 50,
              width: 50,
              child: Icon(
                Icons.queue_music_rounded,
                size: 28,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPlayPauseButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: NeumorphicCircleWidget(
              height: 60,
              width: 60,
              child: Icon(
                Icons.fast_rewind_rounded,
                size: 28,
                color: Colors.grey,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: NeumorphicCircleWidget(
              height: 62,
              width: 62,
              color: MusicPlayerColors.red,
              shape: NeumorphicShape.concave,
              child: Icon(
                Icons.pause_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: NeumorphicCircleWidget(
              height: 60,
              width: 60,
              child: Icon(
                Icons.fast_forward_rounded,
                size: 28,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgress(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 15,
            alignment: Alignment.topLeft,
            child: Text(
              '1:17',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                inherit: false,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: NeumorphicProgressWidget(
            progress: 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 15,
            alignment: Alignment.topRight,
            child: Text(
              '2:46',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                inherit: false,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            _buildTopBar(context),
            const SizedBox(height: 40),
            _buildMusicDisk(context),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 45,
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Hymn of the Weekend',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.65),
                    inherit: false,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 35,
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Feat. Some Band',
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
            const SizedBox(height: 20),
            _buildProgress(context),
            const SizedBox(height: 40),
            _buildPlayPauseButtons(context),
          ],
        ),
      ),
    );
  }
}
