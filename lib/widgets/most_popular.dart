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
            ),
            Positioned(
              bottom: 20,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      travel.location,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      travel.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
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
