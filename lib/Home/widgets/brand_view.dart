import 'package:brand_fest/Home/screens/rating_screen.dart';
import 'package:brand_fest/Utels/app_style.dart';
import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  final String subjects;
  final String lessons;
  const Brands({
    required this.subjects,
    required this.lessons,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const RatingScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.29,
        height: MediaQuery.of(context).size.height * 0.22,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: const Color.fromARGB(255, 109, 108, 108), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    subjects,
                    style: appstyle(9, Colors.black, FontWeight.w700),
                  ),
                  Text(
                    lessons,
                    style: appstyle(7, Colors.grey, FontWeight.normal),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
