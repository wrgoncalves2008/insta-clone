import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'consts.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Divider(),
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 85,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: stories.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) {
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
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
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image(
                                          fit: BoxFit.cover,
                                          image:
                                              NetworkImage(posts[i].userImage)),
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
                            child: FadeInImage(
                              image: NetworkImage(posts[i].postImage),
                              placeholder: AssetImage('assets/placeholder.png'),
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                        icon: Icon(Feather.heart),
                                        onPressed: () {}),
                                    IconButton(
                                        icon: Icon(Feather.message_circle),
                                        onPressed: () {}),
                                    IconButton(
                                        icon: Icon(Feather.send),
                                        onPressed: () {}),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                        icon: Icon(Feather.bookmark),
                                        onPressed: () {}),
                                  ],
                                )
                              ],
                            ),
                          ),

                          //Barra de botoes do post (Curtir, comentar, enviar,...)
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            width: MediaQuery.of(context).size.width,
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Curtido por ",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: "Cole",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: " e ",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: "outras pessoas",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]),
                            ),
                          ),

                          //Caption do post
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: posts[i].userName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                    text: " ${posts[i].legend}",
                                    style: TextStyle(color: Colors.black))
                              ]),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  posts[i].date,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
