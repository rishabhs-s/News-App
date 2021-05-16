import 'package:flutter/material.dart';
import 'package:news/Helper/Listviewhomepage.dart';
import 'package:news/Helper/Newsitem.dart';
import 'package:news/Screens/SideSlider.dart';
import 'HeadNavbar.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Listitem> listtile = [
    Listitem(
      "https://img.etimg.com/thumb/msid-75091522,width-650,imgsize-548500,,resizemode-4,quality-100/while-it-is-not-known-if-pm-modi-will-move-metaphoric-mountains-to-accede-to-this-plea-an-indian-hakim-might-suggest-that-brazilians-should-take-a-daily-dose-of-a-spice-that-in-north-india-is-called-kalonji-.jpg",
      'This is heading of related news this is and go on',
      'This is heading of related news this is another heading of the this will go like this',
      '03-03-2021',
    ),
    Listitem(
      "https://images.newindianexpress.com/uploads/user/imagelibrary/2020/9/22/w1200X800/Arvind_Kejriwal_PTI_Image12.jpg",
      'This is heading of related news this is and go on',
      'This is heading of related news this is another heading of the this will go like this',
      '03-03-2021',
    ),
    Listitem(
      "https://w7.pngwing.com/pngs/748/607/png-transparent-news-media-newspaper-advertising-information-news-icon-text-orange-logo.png",
      'This is heading of related news this is and go on',
      'This is heading of related news this is another heading of the this will go like this',
      '03-03-2021',
    ),
    Listitem(
      "https://s29288.pcdn.co/wp-content/uploads/2020/08/shawshank-redemption-image-750.jpg",
      'This is heading of related news this is and go on',
      'This is heading of related news this is another heading of the this will go like this',
      '03-03-2021',
    ),
    Listitem(
      "https://nyc3.digitaloceanspaces.com/endive/blog/wp-content/uploads/2020/01/30120300/3.png",
      'This is heading of related news this is and go on',
      'This is heading of related news this is another heading of the this will go like this  ',
      '03-03-2021',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(title: 'Home Page'),
      drawer: Sidedrawer(),
      body: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        child: ListView.builder(
            itemCount: listtile.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: listwidget(listtile[index]),
              );
            }),
      ),
    );
  }
}
