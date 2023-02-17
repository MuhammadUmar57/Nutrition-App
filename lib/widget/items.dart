// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  String imageurl;
  String imageurl2;

  Items({
    super.key,
    required this.imageurl,
    required this.imageurl2,
  });

  @override
  Widget build(BuildContext context) {
    double containerheight = MediaQuery.of(context).size.height;
    double containerwidth = MediaQuery.of(context).size.width;
    return Container(
      height: containerheight / 4.15,
      width: containerwidth,
      //color: Colors.amberAccent,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          bottom: 18.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                height: containerheight / 4.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(
                      imageurl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Container(
                height: containerheight / 4.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(
                      imageurl2,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
