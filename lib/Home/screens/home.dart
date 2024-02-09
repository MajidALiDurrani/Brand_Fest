import 'package:brand_fest/Home/widgets/brand_view.dart';
import 'package:brand_fest/Home/widgets/cliprract.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontrolar = TextEditingController();
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
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CliprRact(),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextFormField(
                controller: searchcontrolar,
                decoration: InputDecoration(
                    hintText: "Search",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 11, 101, 173),
                    ),
                    fillColor: const Color.fromARGB(255, 11, 101, 173),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 142, 144, 146),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Expanded(
              child: GridView(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 160,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                children: const [
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                  Brands(subjects: "mathematics", lessons: "23/45"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
