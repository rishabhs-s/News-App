import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:news/Constants.dart';
import 'package:news/Helper/Newsitem.dart';
import 'package:news/Helper/listviewvideos.dart';
import 'package:news/Screens/HeadNavbar.dart';
import 'package:news/Screens/SideSlider.dart';

class Videos extends StatelessWidget {
  const Videos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Listitem> listtile = [
      Listitem(
        "https://media.istockphoto.com/photos/sunrise-strawberry-farm-landscape-agricultural-agriculture-picture-id1091940998?k=6&m=1091940998&s=612x612&w=0&h=8jnUIRmKxwv8Zs9E9FLK2fHkKfcoNLu_udMunQQaZ-s=",
        'This is heading of related news this is and go on',
        'This is heading of related news this is another heading of the this will go like this',
        '03-03-2021',
      ),
      Listitem(
        "https://cdn-res.keymedia.com/cms/images/us/039/0132_637324252136928732.jpg",
        'This is heading of related news this is and go on',
        'This is heading of related news this is another heading of the this will go like this',
        '03-03-2021',
      ),
      Listitem(
        "https://mcmscache.epapr.in/post_images/website_350/post_18452374/thumb.jpg",
        'This is heading of related news this is and go on',
        'This is heading of related news this is another heading of the this will go like this news This is a',
        '03-03-2021',
      ),
    ];
    return Scaffold(
      appBar: headerNav(title: 'Videos'),
      drawer: Sidedrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(child: Text("Videos", style: videotxtmain)),
          ),
          Container(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer.network(
                //"https://www.youtube.com/watch?v=_2KmJnFoiSg",
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
                betterPlayerConfiguration: BetterPlayerConfiguration(
                  aspectRatio: 16 / 9,
                ),
              ),
            ),
          ),
          Container(
            // width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("This is a heading news", style: mainhead),
                SizedBox(height: 5),
                Text("Date and time", style: datetime),
                SizedBox(height: 8),
                Text(
                    "This is a heading news.This is a heading news This is a heading news.This is a heading news",
                    style: videotxtsub),
                RaisedButton(
                  elevation: 3,
                  onPressed: () {},
                  child: Text("Information"),
                  color: Colors.grey[200],
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: listtile.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: listwidgetvideo(listtile[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
