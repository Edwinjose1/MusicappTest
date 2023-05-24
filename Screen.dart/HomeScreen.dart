// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter/material.dart';
// import 'package:musicapp/Class.dart';
// import 'package:musicapp/Widgets/BottomNav.dart';
// import 'package:musicapp/Widgets/Headings.dart';
// import 'package:musicapp/Widgets/ScrollingHeading.dart';
// import 'package:musicapp/Widgets/SongListTile.dart';

// import '../Widgets/SectionCatagory.dart';
// import '../Widgets/Sectionone.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final AssetsAudioPlayer player = AssetsAudioPlayer();

//   @override
//   Widget build(BuildContext context) {
//     List<Song> songs = [
//       Song(
//         name: 'Song 1',
//         imagePath: 'assets/images/song1.png',
//         audioPath: 'musicapp/lib/asset/sound/128-O Bedardeya - Tu Jhoothi Main Makkar 128 Kbps.mp3',
//       ),
//       Song(
//         name: 'Song 2',
//         imagePath: 'assets/images/song2.png',
//               audioPath: 'musicapp/lib/asset/sound/128-O Bedardeya - Tu Jhoothi Main Makkar 128 Kbps.mp3',

//       ),
//       // Add more songs as needed
//     ];

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(163, 137, 15, 129),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             SectionOne(),
//             Headings(
//                 fontsize: 30, color: Colors.white, text: "Trending right now"),
//             Catagories(),
//             ScrollingHeadings(),
//             SizedBox(
//               height: 20,
//             ),
//             ListView.builder(
//               itemCount: songs.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return SongListTile(
//                   songTitle: songs[index].name,
//                   songArtist: songs[index].name,
//                   imagePath:
//                       "https://w0.peakpx.com/wallpaper/471/955/HD-wallpaper-alone-hand-artyns-abstract-birds-blue-dark-dreams-lonely-magic-man-night-pink-purple-shadow-sitting-sky-smoke-soft-space-stars-surreal-thinking-unreal.jpg",
//                 );
//                 // ListTile(

//                 //   leading: Image.asset(songs[index].imagePath),
//                 //   title: Text(songs[index].name),
//                 //   onTap: () {
//                 //     // Navigate to NowPlayingScreen passing the selected song
//                 //     Navigator.push(
//                 //       context,
//                 //       MaterialPageRoute(
//                 //         builder: (context) => NowPlayingScreen(song: songs[index]),
//                 //       ),
//                 //     );
//                 //   },
//                 // );
//               },
//             )

//             // SongListTile(

//             //   songTitle: "Hai",
//             //   songArtist: "Hai",
//             //   imagePath:
//             //       "https://w0.peakpx.com/wallpaper/471/955/HD-wallpaper-alone-hand-artyns-abstract-birds-blue-dark-dreams-lonely-magic-man-night-pink-purple-shadow-sitting-sky-smoke-soft-space-stars-surreal-thinking-unreal.jpg",
//             // ),
//             // SongListTile(

//             //   songTitle: "Hai",
//             //   songArtist: "Hai",
//             //   imagePath:
//             //       "https://w0.peakpx.com/wallpaper/471/955/HD-wallpaper-alone-hand-artyns-abstract-birds-blue-dark-dreams-lonely-magic-man-night-pink-purple-shadow-sitting-sky-smoke-soft-space-stars-surreal-thinking-unreal.jpg",
//             // ),
//             // SongListTile(

//             //   songTitle: "Hai",
//             //   songArtist: "Hai",
//             //   imagePath:
//             //       "https://w0.peakpx.com/wallpaper/471/955/HD-wallpaper-alone-hand-artyns-abstract-birds-blue-dark-dreams-lonely-magic-man-night-pink-purple-shadow-sitting-sky-smoke-soft-space-stars-surreal-thinking-unreal.jpg",
//             // ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const BottomNav(),
//     );
//   }
// }
