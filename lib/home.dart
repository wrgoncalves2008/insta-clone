import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/models/Story.dart';

class Home extends StatelessWidget {
  final List<Story> _stories = [
    Story(
        name: "Mary",
        image:
            "https://images.pexels.com/photos/2318776/pexels-photo-2318776.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Story(
        name: "Walker",
        image:
            "https://images.pexels.com/photos/2827374/pexels-photo-2827374.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Anna",
        image:
            "https://images.pexels.com/photos/3393793/pexels-photo-3393793.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Sophia",
        image:
            "https://images.pexels.com/photos/3307265/pexels-photo-3307265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Abhiram",
        image:
            "https://images.pexels.com/photos/915972/pexels-photo-915972.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Story(
        name: "Andres",
        image:
            "https://images.pexels.com/photos/842548/pexels-photo-842548.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Joan",
        image:
            "https://images.pexels.com/photos/789822/pexels-photo-789822.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Charlotte",
        image:
            "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Brenda",
        image:
            "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Bianca",
        image:
            "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Story(
        name: "Paul",
        image:
            "https://images.pexels.com/photos/35183/people-homeless-man-male.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Instagram",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Feather.camera),
              color: Colors.black,
              onPressed: () {}),
          actions: <Widget>[
            IconButton(
              icon: Icon(Feather.send),
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Divider(),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: _stories.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (ctx, i) {
                        return Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                    width: 3,
                                    color: Color.fromRGBO(109, 7, 200, 1),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image(
                                    image: NetworkImage(_stories[i].image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(_stories[i].name),
                          ],
                        );
                      })),
              Divider(),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (ctx, i) {
                    return Column();
                  })
            ],
          ),
        ));
  }
}
