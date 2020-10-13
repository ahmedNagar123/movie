import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double roundedContainerHeight;
  final String imageUrl;

  DetailSliverDelegate(
    this.expandedHeight,
    this.imageUrl,
    this.roundedContainerHeight,
  );

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Stack(
        children: [
          Hero(
            tag: imageUrl,
            child: Image.network(
              imageUrl,
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: expandedHeight - roundedContainerHeight - shrinkOffset,
            left: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: roundedContainerHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                )),
          ),
          Positioned(
            left: 150,
            bottom: 0,
            top: expandedHeight - 80 - shrinkOffset,
            child: Card(
              shape: CircleBorder(),
              elevation: 10,
              child: CircleAvatar(
                radius: 40,
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
        overflow: Overflow.visible,
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
