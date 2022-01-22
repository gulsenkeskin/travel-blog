import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final _pageCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(itemBuilder: (context, index) {
      var travel = _list[index];
      return Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              travel.url,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          )
        ],
      );
    });
  }
}
