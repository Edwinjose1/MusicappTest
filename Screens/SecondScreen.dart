import 'package:flutter/material.dart';
import 'package:musicapp/Screens/HomeScreen.dart';
import 'package:musicapp/Widgets/Headings.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(163, 137, 15, 129),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color.fromARGB(119, 40, 15, 37),
                        ),
                        height: 55,
                        width: 55,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromARGB(119, 40, 15, 37)
                      ),
                      height: 55,
                      width: 55,
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Headings(
                  fontsize: 30,
                  color: Colors.white,
                  text: "Recent favourite"),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0, // Adjust the cross-axis spacing here
                  mainAxisSpacing: 15, // Adjust the main-axis spacing here
                  children: List.generate(10, (index) {
                    return Card1();
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,

          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: BottomAppBar(
              color:const Color.fromARGB(79, 0, 0, 0),
              shape:const CircularNotchedRectangle(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon:const Icon(
                        Icons.home,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),);
                      },
                    ),
                    IconButton(
                      icon:const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()),);
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.music_note,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon:const Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage("lib/asset/images/blueimage2.png"
                    ), // replace with your own image path
                fit: BoxFit.cover,
              ),
            ),
            width: 160,
            height: 140, // adjust the height as desired
          ),
        ),
        Container(
          color: Color.fromARGB(0, 0, 0, 0), // adjust the color as desired

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'First line of text',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Second line of text',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
