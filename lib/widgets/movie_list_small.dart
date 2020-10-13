import 'package:flutter/material.dart';

import '../screens/movies_detail_screen.dart';

class MovieListSmall extends StatelessWidget {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;

  MovieListSmall({this.id, this.title, this.subTitle, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(MovieDetailsScreen.routeName, arguments: id);
            },
            child: Container(
              // margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.4,
                  // height: MediaQuery.of(context).size.height -
                  //     MediaQuery.of(context).padding.top,
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: FadeInImage(
                    image: NetworkImage(
                      imageUrl,
                    ),
                    // width: MediaQuery.of(context).size.width - 250,
                    width: 200,
                    // height: MediaQuery.of(context).size.height - 530,
                    height: 400,
                    fit: BoxFit.cover,
                    placeholder: AssetImage('images/cast.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
