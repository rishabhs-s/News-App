import 'package:flutter/material.dart';
import 'package:news/Constants.dart';
import 'package:news/Helper/Newsitem.dart';

Widget listwidget(Listitem item) {
  return Container(
    // elevation: 0,
    margin: EdgeInsets.only(bottom: 12.0),
    child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(item.imageurl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.newsTitle,
                    style: mainhead,
                  ),
                  SizedBox(height: 5),
                  Text(item.newscontent),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 15,
                      ),
                      Text(item.date),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(4)),
                        padding: EdgeInsets.only(
                            left: 6, right: 6, top: 1, bottom: 1),
                        child: Text(
                          "Sports",
                          style: typeofnews,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(Icons.bookmark_border),
                        onTap: () => {},
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )),
  );
}
