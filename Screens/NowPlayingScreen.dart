import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

// 
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Playsong extends StatefulWidget {
  const Playsong({
    Key? key,
    required this.artist,
    required this.image,
    required this.title,
    required this.url,
  }) : super(key: key);

  final String url;
  final String image;
  final String artist;
  final String title;

  @override
  _PlaysongState createState() => _PlaysongState();
}

class _PlaysongState extends State<Playsong> {
  bool _isPlaying = false;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    playSongFromAsset(widget.url);
  }

  Future<void> playSongFromAsset(String assetPath) async {
    await audioPlayer.open(Audio(assetPath));
    audioPlayer.play();
    setState(() {
      _isPlaying = true;
    });
  }

  void _togglePlayback() {
    if (_isPlaying) {
      audioPlayer.pause();
    } else {
      audioPlayer.play();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  // @override
  // void dispose() {
  //   audioPlayer.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(163, 137, 15, 129),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(163, 137, 15, 129),
        leading:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromARGB(119, 40, 15, 37),
                      ),
                      height: 55,
                      width: 55,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.amberAccent,
                ),
                height: 300,
                width: double.infinity,
              ),
              SizedBox(height: 30),
              Text(widget.title),
              Text(widget.artist),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.skip_previous,
                    size: 60,
                  ),
                  IconButton(
                    icon: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 35,
                      color: Colors.black,
                    ),
                    onPressed: _togglePlayback,
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
