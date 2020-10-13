import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../component/const.dart';
import '../module/movies.dart';
import '../widgets/header_details.dart';
import '../widgets/movie_list_small.dart';

class MovieDetailsScreen extends StatefulWidget {
  static const String routeName = '/movie-details';

  @override
  _MovieDetailsScreenState createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  final double expandedHeight = 400;
  final double roundedContainerHeight = 50;

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    var findById = Movie().findById(id);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              _buildSliverHead(findById),
              SliverToBoxAdapter(child: _buildDetail(findById))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    Icons.bookmark_border_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 80,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              color: Colors.white.withOpacity(.7),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, bottom: 10, top: 10),
                    child: RaisedButton(
                        elevation: 5,
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 16, bottom: 16),
                          child: Text(
                            'Buy Ticket',
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                  ),
                  CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 3.0,
                    progressColor: Colors.black,
                    animation: true,
                    percent: 0.9,
                    center: Text(
                      ".9",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        overflow: Overflow.visible,
      ),
    );
  }

  Widget _buildSliverHead(Movies findById) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: DetailSliverDelegate(
        expandedHeight,
        findById.imageUrl,
        roundedContainerHeight,
      ),
    );
  }

  Widget _buildDetail(Movies findById) {
    return Container(
      height: MediaQuery.of(context).size.height * .8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                findById.title,
                style: titleLargeDetail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Text(
                findById.subTitle,
                style: subTitleDetail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Text(
                'RunTime:${findById.runTime}',
                style: subTitleDetail,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
            _buildDetailSmall(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 20),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 20),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 20),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 20),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 20),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 20),
              child: Text(
                findById.description,
                style: subTitleDetailDesc,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailSmall() {
    List<Movies> displayMovie = Movie().items;
    return Container(
      height: 170,
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
    );
  }
}
