import 'package:brand_fest/Utels/app_style.dart';
import 'package:brand_fest/Utels/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ],
    ));
    //         Row(
    //   children: List.generate(5, (index) {
    //     return Icon(
    //       index < 3 ? Icons.star : Icons.star_border,
    //       color: Colors.green,
    //     );
    //   }),
    // ));
  }
}
