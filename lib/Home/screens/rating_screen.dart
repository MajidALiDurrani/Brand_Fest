import 'package:brand_fest/Utels/app_style.dart';
import 'package:brand_fest/Home/widgets/rating_cart.dart';
import 'package:brand_fest/Utels/media_query.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu_rounded),
        title: const Image(
          image: AssetImage("assets/3.png"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: SizedBox(
            height: screenHeight(context) * 0.5,
            width: screenWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    width: screenWidth(context),
                    height: screenHeight(context) * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        border: Border.all(
                            color: const Color.fromARGB(255, 11, 101, 173),
                            width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 11, 101, 173),
                            spreadRadius: 1,
                            blurRadius: 0.6,
                            offset: Offset(1, 1),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Conversaton",
                          style: appstyle(25, Colors.black, FontWeight.normal),
                        ),
                        const Expanded(child: RatingStars()),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    width: screenWidth(context),
                    height: screenHeight(context) * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        border: Border.all(
                            color: const Color.fromARGB(255, 11, 101, 173),
                            width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 11, 101, 173),
                            spreadRadius: 1,
                            blurRadius: 0.6,
                            offset: Offset(1, 1),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Presentation",
                          style: appstyle(25, Colors.black, FontWeight.normal),
                        ),
                        const Expanded(child: RatingStars()),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    width: screenWidth(context),
                    height: screenHeight(context) * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        border: Border.all(
                            color: const Color.fromARGB(255, 11, 101, 173),
                            width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 11, 101, 173),
                            spreadRadius: 1,
                            blurRadius: 0.6,
                            offset: Offset(1, 1),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Idea",
                          style: appstyle(25, Colors.black, FontWeight.normal),
                        ),
                        const Expanded(child: RatingStars()),
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  color: const Color.fromARGB(255, 11, 101, 173),
                  minWidth: screenWidth(context) * 0.4,
                  height: screenHeight(context) * 0.05,
                  onPressed: () {},
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    side: BorderSide(color: Color.fromARGB(255, 138, 136, 136)),
                  ),
                  child: const Text(
                    'Submit All',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
