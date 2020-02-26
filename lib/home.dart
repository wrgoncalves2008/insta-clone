import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'consts.dart';

class Home extends StatelessWidget {
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
                      itemCount: stories.length,
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
                                    image: NetworkImage(stories[i].image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(stories[i].name),
                          ],
                        );
                      })),
              Divider(),

              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: posts.length,
                    itemBuilder: (ctx, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                posts[i].userImage)),
                                      ),
                                    ),
                                    Text(
                                      posts[i].userName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                    icon: Icon(Feather.more_vertical),
                                    onPressed: () {})
                              ],
                            ),
                            Container(
                              child: Image(
                                image: NetworkImage(posts[i].postImage),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
