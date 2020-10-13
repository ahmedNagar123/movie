import 'package:flutter/material.dart';

import '../component/const.dart';
import '../screens/movies_detail_screen.dart';

class MovieList extends StatelessWidget {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;
  final double height;

  MovieList({this.title, this.subTitle, this.imageUrl, this.id, this.height});

  @override
  Widget build(BuildContext context) {
    print(height);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          elevation: 10,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(MovieDetailsScreen.routeName, arguments: id);
              },
              child: Hero(
                tag: imageUrl,
                child: FadeInImage(
                  height: height * .75,
                  // width: width * .7,
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                  placeholder: AssetImage('images/cast.jpg'),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: height * .1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              title,
              style: titleHome,
            ),
          ),
        ),
        Container(
          height: height * .1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              subTitle,
              style: subTitleHome,
            ),
          ),
        ),
      ],
    );
  }
}
