import 'package:flutter/material.dart';
import 'package:news/Constants.dart';
import 'package:news/Screens/Home.dart';
import 'package:news/Screens/Video.dart';
import 'Profile.dart';

class Sidedrawer extends StatelessWidget {
  const Sidedrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.5,
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: knavbar,
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                )
              },
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text(
                "Videos",
                style: knavbar,
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Videos()),
                )
              },
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text(
                "Profile",
                style: knavbar,
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                )
              },
            )
          ],
        ),
      ),
    );
  }
}
