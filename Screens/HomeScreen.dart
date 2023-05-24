import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:musicapp/Widgets/Headings.dart';
import 'package:musicapp/Widgets/ScrollingHeading.dart';
import 'package:musicapp/Widgets/SectionCatagory.dart';
import 'package:musicapp/Widgets/SongListTile.dart';

import '../Widgets/BottomNav.dart';
import '../Widgets/Sectionone.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  List<Map<String, String>> songs = [
    {
      'title': ' Har Ghadi Badal Rahi Hai Roop Zindagi',
      'artist': 'Sonu Nigam',
      'imagePath': 'lib/asset/images/Kalhonaho.jpg',
      'url': 'lib/asset/sound/Har-Ghadi-Badal-Rahi-Hai(PagalWorld).mp3',

    },
    {
      'title': 'Perfect',
      'artist': 'Ed Sheeran',
      'imagePath': 'lib/asset/images/perfect.jpg',
      'url': 'lib/asset/sound/Ed_Sheeran_-_Perfect.mp3',
      
      
    },
        {
      'title': 'Dil Diyan Gallan',
      'artist': 'Atif Aslam',
      'imagePath': 'lib/asset/images/Dildiyan.jpg',
      'url': 'lib/asset/sound/Dil Diyan Gallan (Tiger Zinda Hai) 128 Kbps.mp3',
    },
    // Add more songs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(163, 137, 15, 129),
      body: SafeArea(
        child: ListView(
          children: [
            const SectionOne(),
            const Headings(
                fontsize: 30, color: Colors.white, text: "Trending right now"),
            const Catagories(),
            const ScrollingHeadings(),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: songs
                  .length, // Use the null-aware operator '?.' to access the length property
              itemBuilder: (BuildContext context, int index) {
                // Use null-aware operators '?.' and '??' to access the values and provide fallbacks for null values
                String title = songs[index]['title'] ?? 'Unknown Title';
                String artist = songs[index]['artist'] ?? 'Unknown Artist';
                String imagePath =
                    songs[index]['imagePath'] ?? 'lib/asset/images/perfect.jpg';
                String url = songs[index]['url'] ?? '';
                return SongListTile(
                    songTitle: title,
                    songArtist: artist,
                    imagePath: imagePath,
                    url: url);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
