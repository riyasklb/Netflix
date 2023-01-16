import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/core/colors/colors.dart';
import 'package:project2/core/constands.dart';
import 'package:project2/presentataion/home/background_card.dart';
import 'package:project2/presentataion/home/number_card.dart';
import 'package:project2/presentataion/widgets/maintitle.dart';

import '../widgets/main_titlecard.dart';
import 'custom_button_widget.dart';
import 'number_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class screenhome extends StatelessWidget {
  const screenhome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollnotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;

                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollnotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        backgroundcard(),
                        maintitlecard(title: 'Released in the past year'),
                        kheight,
                        maintitlecard(title: 'Trending Now'),
                        kheight,
                        numbertitlecard(),
                        kheight,
                        maintitlecard(title: 'Tense Dramas'),
                        kheight,
                        maintitlecard(title: 'South Indian Cinimas'),
                        kheight,
                      ],
                    ),
                    scrollnotifier.value == true
                        ? AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: double.infinity,
                            height: 80,
                            color: Colors.black.withOpacity(0.1),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                    ),
                                    kwidth,
                                    Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.blue,
                                    ),
                                    kwidth
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Tv Shows',
                                      style: khometitletext,
                                    ),
                                    Text(
                                      'Movies',
                                      style: khometitletext,
                                    ),
                                    Text(
                                      'categories',
                                      style: khometitletext,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : kheight
                  ],
                ),
              );
            }));
  }
}

class maincard extends StatelessWidget {
  const maincard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/62HCnUTziyWcpDaBO2i1DX17ljH.jpg'
              // "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
              ),
        ),
      ),
    );
  }
}
