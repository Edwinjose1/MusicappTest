import 'package:flutter/material.dart';
import 'package:musicapp/Widgets/Catagorycard.dart';


class Catagories extends StatelessWidget {
  const Catagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CategoryCard(
                  size: size,
                  networkImage:
                      "https://w0.peakpx.com/wallpaper/471/955/HD-wallpaper-alone-hand-artyns-abstract-birds-blue-dark-dreams-lonely-magic-man-night-pink-purple-shadow-sitting-sky-smoke-soft-space-stars-surreal-thinking-unreal.jpg",
                ),
                CategoryCard(
                  size: size,
                  networkImage:
                      "https://w0.peakpx.com/wallpaper/471/955/HD-wallpaper-alone-hand-artyns-abstract-birds-blue-dark-dreams-lonely-magic-man-night-pink-purple-shadow-sitting-sky-smoke-soft-space-stars-surreal-thinking-unreal.jpg",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}