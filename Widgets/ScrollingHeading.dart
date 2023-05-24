import 'package:flutter/material.dart';
import 'package:musicapp/Widgets/Headings.dart';


class ScrollingHeadings extends StatelessWidget {
  const ScrollingHeadings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration:const BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(147, 10, 16, 81)),
                  child:const Headings(
                      fontsize: 16,
                      color: Colors.white,
                      text: "Trending right now")),
            ),

           const Headings  (fontsize: 16, color: Colors.white, text: "Rock"),
           const Headings(
                fontsize: 16, color: Colors.white, text: "Hip Hop"),
           const Headings(
                fontsize: 16, color: Colors.white, text: "Electro"),
          ],
        ),
      ),
    );
  }
}
