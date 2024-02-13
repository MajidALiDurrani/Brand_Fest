// ignore_for_file: must_be_immutable

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({super.key});

  @override
  State<RatingBar> createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RatingBAr(
        rating: 5,
        size: 20,
        ratingcount: null,
      )),
    );
  }
}

class RatingBAr extends StatefulWidget {
  RatingBAr(
      {super.key,
      required this.rating,
      required this.size,
      required this.ratingcount});
  final double rating;
  final double size;
  int? ratingcount;
  bool pressed = true;
  Color color = Colors.green;
  @override
  State<RatingBAr> createState() => _RatingBArState();
}

class _RatingBArState extends State<RatingBAr> {
  @override
  Widget build(BuildContext context) {
    List<Widget> starList = [];
    int realNumber = widget.rating.floor();
    // int partNumber = ((rating - realNumber) * 10).ceil(); //this is use for cliper class if we want to made stars half

    for (int i = 0; i <= 5; i++) {
      if (i < realNumber) {
        starList.add(IconButton(
            onPressed: () {
              setState(() {
                widget.pressed = !widget.pressed;
              });
            },
            icon: widget.pressed
                ? const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 30,
                  )
                : const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 30,
                  )));
      }
      // else if (i == realNumber) {
      //   starList.add(const SizedBox(
      //     height: 15,
      //     width: 20,
      //     child: Stack(
      //       children: [
      //         Icon(
      //           Icons.star,
      //           color: Colors.amber,
      //           size: 20,
      //         )
      //       ],
      //     ),
      //   ));
      // } else {
      //   starList.add(const Icon(
      //     Icons.star,
      //     color: Colors.grey,
      //     size: 20,
      //   ));
      // }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: starList,
    );
  }
}
