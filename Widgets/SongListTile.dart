import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Screens/NowPlayingScreen.dart';

// class SongListTile extends StatefulWidget {
  

//    SongListTile({
//     Key? key,
//     required this.songTitle,
//     required this.songArtist,
//     required this.imagePath,
//     required this.url

//   }) : super(key: key);
// final String? songTitle;
//   final String? songArtist;
//   final String? imagePath;
//   final String?  url;
//   @override
//   State<SongListTile> createState() => _SongListTileState();
// }

// class _SongListTileState extends State<SongListTile> {
//   final AssetsAudioPlayer songplay=AssetsAudioPlayer();
//   @override
//   Widget build(BuildContext context) {
   
//     return ListTile(
//       onTap: () {
//         songplay.open(Audio('lib/asset/sound/128-O Bedardeya - Tu Jhoothi Main Makkar 128 Kbps.mp3'));
//         // players.open(Audio('lib/asset/sound/128-O Bedardeya - Tu Jhoothi Main Makkar 128 Kbps.mp3'));
//       },
//       leading: ClipRRect(
//         borderRadius: BorderRadius.circular(10),
//         child: Image.asset(
//           imagePath,
//           width: 60,
//           height: 70,
//           fit: BoxFit.cover,
//         ),
//       ),
//       title: Text(
//         widget.songTitle,
//         overflow: TextOverflow.ellipsis,
//         maxLines: 1,
//         style: const TextStyle(
//           fontSize: 25,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       subtitle: Row(
//         children: [
//           Icon(Icons.person),
//           SizedBox(
//             width: 5,
//           ),
//           Text(
//             widget.songArtist,
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             style: const TextStyle(
//               fontSize: 15,
//             ),
//           ),
//         ],
//       ),
//       trailing: IconButton(
//         onPressed: () {
//           // Add your logic here
//         },
//         icon: Icon(
//           Icons.favorite_border,
//           size: 35,
//           color: Color.fromARGB(72, 43, 23, 23),
//         ),
//       ),
//     );
//   }
// }

class SongListTile extends StatelessWidget {
  final String? songTitle;
  final String? songArtist;
  final String? imagePath;
  final String? url;

  const SongListTile({
    Key? key,
    required this.songTitle,
    required this.songArtist,
    required this.imagePath,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // AssetsAudioPlayer _assetsAudioPlayer=AssetsAudioPlayer();
        // // Play the song here using the provided URL
        // _assetsAudioPlayer.open(
        //   Audio("lib/asset/sound/128-O Bedardeya - Tu Jhoothi Main Makkar 128 Kbps.mp3")
          
        // );
        // You can also navigate to the NowPlayingScreen passing the song details as route arguments
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Playsong(
              title: songTitle!,
              artist: songArtist!,
              image: imagePath!,
              url: url!,
            ),
          ),
        );
      },
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath!,
          width: 60,
          height: 70,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        songTitle!,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.person),
          SizedBox(width: 5),
          Text(
            songArtist!,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          // Add your logic here
        },
        icon: Icon(
          Icons.favorite_border,
          size: 35,
          color: Color.fromARGB(72, 43, 23, 23),
        ),
      ),
    );
  }
}
