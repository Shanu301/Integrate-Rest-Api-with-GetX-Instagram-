import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/welcomecontroller.dart';
import 'package:flutter_app/Models/Empty.dart';
import 'package:flutter_app/Models/Welcome.dart';
import 'package:get/get.dart';

bool isFavorite = true;

class ProductTile extends StatelessWidget {

  final Empty empty;
  final Welcome welcome;
   ProductTile(this.empty,this.welcome);



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // posts
            Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (ctx, i) {
                      return Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image(
                                          image: NetworkImage(
                                              "https://th.bing.com/th/id/OIP.wgj6PJHqYHGli-MGmNsM8wHaEK?pid=ImgDet&rs=1"),
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),

                                      FittedBox(
                                        child: Text(empty.channelname, maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(color: Colors.black, ),),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),

                            FadeInImage(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/OIP._06jVI3p7P0VmUa-6Cr1pAHaFj?pid=ImgDet&rs=1"),
                              placeholder: AssetImage("assets/placeholder.png"),
                              width: MediaQuery.of(context).size.width,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.comment),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.send),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark,
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(
                                horizontal: 14,
                              ),
                              child: RichText(
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Liked By ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: (welcome.username),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: (welcome.username),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: (welcome.username),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: " and",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 1263 others",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // caption
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 5,
                              ),
                              child: RichText(
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: (welcome.username),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: ":-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text:(welcome.comments),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // post date
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 14,
                              ),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Febuary 2020",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
