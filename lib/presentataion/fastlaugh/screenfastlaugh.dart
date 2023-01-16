import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project2/presentataion/fastlaugh/widgets/videolistitem.dart';
import 'package:project2/presentataion/widgets/appbar.dart';

class screenfastlaugh extends StatelessWidget {
  const screenfastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return videolistitem(
            index: index,
          );
        }),
      )),
    );
  }
}
