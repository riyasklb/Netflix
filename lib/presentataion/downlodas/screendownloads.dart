import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/application/downloads/downloads_bloc.dart';
import 'package:project2/core/colors/colors.dart';
import 'package:project2/core/constands.dart';
import 'package:project2/presentataion/widgets/appbar.dart';

class screendownloads extends StatelessWidget {
  screendownloads({super.key});
  final listwidgets = [
    _smartdownloads(),
    section2(),
    section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: appbarwidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (ctx, index) => listwidgets[index],
            separatorBuilder: (ctx, index) => SizedBox(
                  height: 25,
                ),
            itemCount: listwidgets.length));
  }
}

class section2 extends StatelessWidget {
  section2({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DownloadsBloc>(context)
        .add(downloadsevent.getdownloadsimages());
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          'Introducing Downloads For You',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhitecolor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          'We will download a personolised selection of \nmovies and shows for you,so there always\n somthing to wach on your deivce.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: kgrey,
          ),
        ),
        BlocBuilder<DownloadsBloc, downloadsstate>(
          builder: (context, state) {
            return state.isloading
                ? CircularProgressIndicator()
                : SizedBox(
                    width: size.width,
                    height: size.width,
                    child: Stack(alignment: Alignment.center, children: [
                      Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          radius: size.width * 0.42,
                        ),
                      ),
                      Downloadsimagewidgets(
                          imagelist:
                              '$imageappendurl${state.downloads[0].posterPath}',
                          margin: EdgeInsets.only(left: 200, bottom: 48),
                          angle: 20,
                          size: Size(size.width * 0.32, size.width * 0.57)),
                      Downloadsimagewidgets(
                          imagelist:
                              '$imageappendurl${state.downloads[1].posterPath}',
                          margin: EdgeInsets.only(right: 200, bottom: 48),
                          angle: -20,
                          size: Size(size.width * 0.32, size.width * 0.57)),
                      Downloadsimagewidgets(
                          radius: 8,
                          imagelist:
                              '$imageappendurl${state.downloads[2].posterPath}',
                          margin: EdgeInsets.only(bottom: 8),
                          size: Size(size.width * 0.44, size.width * 0.66)),
                    ]),
                  );
          },
        ),
      ],
    );
  }
}

class section3 extends StatelessWidget {
  const section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kbuttoncolorblue,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    color: kwhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kwhitecolor,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What You Can Download',
              style: TextStyle(
                  color: kblackcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _smartdownloads extends StatelessWidget {
  const _smartdownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhitecolor,
        ),
        kwidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class Downloadsimagewidgets extends StatelessWidget {
  const Downloadsimagewidgets({
    Key? key,
    this.angle = 0,
    required this.imagelist,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  // final Size size;
  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imagelist,
              ),
            )),
      ),
    );
  }
}
