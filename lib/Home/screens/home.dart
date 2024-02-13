import 'package:brand_fest/Home/widgets/brand_view.dart';
import 'package:brand_fest/Home/widgets/cliprract.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontrolar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(Icons.menu_rounded),
          title: const Image(
            image: AssetImage("assets/3.png"),
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 241, 239, 239),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: CliprRact(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 15, right: 15),
                child: TextFormField(
                  controller: searchcontrolar,
                  decoration: InputDecoration(
                      hintText: "Search",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1.5, color: Colors.grey),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 11, 101, 173),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: Color.fromARGB(255, 142, 144, 146),
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisExtent: 130,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    children: const [
                      Brands(subjects: "Majid", lessons: "Application"),
                      Brands(
                          subjects: "Snack Tiger", lessons: "Automatic Bulb"),
                      Brands(
                          subjects: "Jamini Hadar",
                          lessons: "Bulding Estiemate"),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
