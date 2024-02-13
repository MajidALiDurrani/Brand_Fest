// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RatingBAr(
        rating: 3.2,
        size: 20,
        ratingcount: null,
      )),
    );
  }
}

class RatingBAr extends StatelessWidget {
  RatingBAr(
      {super.key,
      required this.rating,
      required this.size,
      required this.ratingcount});
  final double rating;
  final double size;
  int? ratingcount;

  @override
  Widget build(BuildContext context) {
    List<Widget> starList = [];
    int realNumber = rating.floor();
    // int partNumber = ((rating - realNumber) * 10).ceil(); //this is use for cliper class if we want to made stars half

    for (int i = 0; i < 5; i++) {
      if (i < realNumber) {
        starList.add(const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ));
      } else if (i == realNumber) {
        starList.add(const SizedBox(
          height: 15,
          width: 20,
          child: Stack(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              )
            ],
          ),
        ));
      } else {
        starList.add(const Icon(
          Icons.star,
          color: Colors.grey,
          size: 20,
        ));
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: starList,
    );
  }
}
