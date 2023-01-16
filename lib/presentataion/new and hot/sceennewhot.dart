//import 'dart:js';

//import 'dart:js';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/core/colors/colors.dart';
import 'package:project2/core/constands.dart';
import 'package:project2/presentataion/home/custom_button_widget.dart';
import 'package:project2/presentataion/new%20and%20hot/widget/commingsoon.dart';
import 'package:project2/presentataion/new%20and%20hot/widget/everyone_waching_widgets.dart';
import 'package:project2/presentataion/widgets/videp_widget.dart';

class screenhotnew extends StatelessWidget {
  const screenhotnew({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: Text(
                'Hot & New',
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              actions: [
                //  Spacer(),
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
              bottom: TabBar(
                  unselectedLabelColor: kwhitecolor,
                  labelColor: kblackcolor,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: kwhitecolor, borderRadius: kradius30),
                  tabs: [
                    Tab(
                      text: '🍿Comming Soon',
                    ),
                    Tab(
                      text: '👀Everyone Waching',
                    )
                  ]),
            )),
        body: TabBarView(children: [
          _buildcomingsoon(),
          _buildeveryoneswaching(),
        ]),
      ),
    );
  }

  Widget _buildcomingsoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) =>
            const commingsoonwidget());
  }

  Widget _buildeveryoneswaching() {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, index) =>
            const everyoncewachingwidget());
  }
}
