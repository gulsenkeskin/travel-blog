import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final _pageCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageCtrl,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    travel.url,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          );
        });
  }
}
