import 'package:flutter/material.dart';
import 'package:news/Constants.dart';
import 'package:news/Helper/Newsitem.dart';

Widget listwidgetvideo(Listitem item) {
  return Container(
    margin: EdgeInsets.only(bottom: 12.0),
    child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
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
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    strutStyle: StrutStyle(fontSize: 12.0),
                    text: TextSpan(style: mainhead, text: item.newsTitle),
                  ),

                  SizedBox(height: 10),
                  // Text(item.newscontent),
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
                            left: 15, right: 15, top: 1, bottom: 1),
                        child: Text(
                          "Info",
                          style: typeofnews,
                        ),
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

class AppTextStyle {}
