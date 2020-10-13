import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/const.dart';
import '../module/movies.dart';
import '../widgets/movieListWidget.dart';
import '../widgets/movie_list_small.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    List<Movies> displayMovie = Movie().items;
    final appBar = AppBar(
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            iconSize: 24,
            color: Color(0xFF232323),
          ),
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Icon(
          Icons.movie_filter_outlined,
          color: Colors.black,
          size: 40,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 5, top: 15),
        child: Text('Movie Plus', style: headLineHome),
      ),
      backgroundColor: Color.fromRGBO(243, 245, 274, 0),
    );
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final heightContLarge = height * .6 - appBar.preferredSize.height;
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20),
              child: Container(
                height: height * .05,
                child: Text(
                  'Recent',
                  style: titleHome,
                ),
              ),
            ),
            Container(
              height: heightContLarge,
              width: double.infinity,
              child: ListView.builder(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return MovieList(
                    id: displayMovie[index].id,
                    imageUrl: displayMovie[index].imageUrl,
                    title: displayMovie[index].title,
                    subTitle: displayMovie[index].subTitle,
                    height: heightContLarge,
                  );
                },
                itemCount: displayMovie.length,
              ),
            ),
            Container(
              width: double.infinity,
              height: height * .3,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return MovieListSmall(
                    id: displayMovie[index].id,
                    imageUrl: displayMovie[index].imageUrl,
                    title: displayMovie[index].title,
                    subTitle: displayMovie[index].subTitle,
                  );
                },
                itemCount: displayMovie.length,
              ),
            ),
            // SizedBox(
            //   height: 5,
            // )
          ],
        ),
      ),
    );
  }
}
