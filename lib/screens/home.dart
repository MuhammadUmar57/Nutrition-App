// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition_app/widget/items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> icons = [
    "assets/icons/salad.png",
    "assets/icons/cocktail.png",
    "assets/icons/cutlery.png",
    "assets/icons/salad.png",
  ];
  List<String> names = [
    "Food",
    "Drinks",
    "Fruit",
    "Salad",
  ];
  List<String> images = [
    "assets/icons/burger1.jpg",
    "assets/icons/salad1.jpg",
    "assets/icons/fruit1.jpg",
    "assets/icons/burger1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    double containerheight = MediaQuery.of(context).size.height;
    double containerwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 74, 36, 19),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 60.0),
              child: Row(
                children: [
                  Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/avatar1.webp"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Find the Best\nhealth for you",
                  style: GoogleFonts.acme(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search  for  Nutri",
                  hintStyle: GoogleFonts.acme(
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: icons.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 115.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image(
                              image: AssetImage(icons[index]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              names[index],
                              style: GoogleFonts.acme(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Text(
                "Popular",
                style: GoogleFonts.acme(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: containerheight / 1.75,
              width: containerwidth,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (ctx, index) {
                  return Items(
                    imageurl: images[index],
                    imageurl2: images[index + 1],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
