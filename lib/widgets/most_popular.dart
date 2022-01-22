import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';

class MostPopular extends StatelessWidget {
  final _list = Travel.generateMostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis
          .horizontal, //yatay kaydırma ekler varsayılan olarak listviewde kaydırma yönü dikeydir
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                travel.url,
                width: 140,
                fit: BoxFit.cover,
              ),
            )
          ],
        );
      },
      separatorBuilder: (_, index) => SizedBox(
        width: 15,
      ),
      itemCount: _list.length,
    );
  }
}
