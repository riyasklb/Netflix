import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/colors/colors.dart';

class videolistitem extends StatelessWidget {
  const videolistitem({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.12),
                  radius: 30,
                  child: Icon(
                    Icons.volume_mute_sharp,
                    color: kwhitecolor,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg"),
                    ),
                  ),
                  videoactions(icon: Icons.emoji_emotions, title: 'Lol'),
                  videoactions(icon: Icons.add, title: 'My List'),
                  videoactions(icon: Icons.share, title: 'Share'),
                  videoactions(icon: Icons.play_arrow, title: 'Play'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class videoactions extends StatelessWidget {
  const videoactions({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: kwhitecolor, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
