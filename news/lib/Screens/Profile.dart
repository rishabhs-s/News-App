import 'package:flutter/material.dart';
import 'package:news/Constants.dart';
import 'HeadNavbar.dart';
import 'SideSlider.dart';

class Profile extends StatelessWidget {
  Widget Profiletextbuilder({@required String label, @required String hint}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 12.0, 30.0, 12),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 5),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: headerNav(title: 'Profile'),
      drawer: Sidedrawer(),
      body: Container(
        child: new SingleChildScrollView(
          child: (Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                // margin: EdgeInsets.all(20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.orange,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSya5dwz7sppH6NGJVip5KpNHbO6feSmMVJoQ&usqp=CAU"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Rishabh Sharma",
                      style: profiletext,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    RaisedButton(
                        onPressed: () => {},
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(color: Color(0xffFFA500)),
                        ),
                        elevation: 0,
                        color: Colors.white),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              Profiletextbuilder(
                hint: 'xxxxxxxxxxxxxxxxxxxxxx',
                label: 'Location',
              ),
              Profiletextbuilder(
                hint: 'xxxxx',
                label: 'Pincode',
              ),
              Profiletextbuilder(
                hint: 'dd-mm-yy',
                label: 'Date of Birth',
              ),
              Profiletextbuilder(
                hint: 'Male',
                label: 'Gender',
              ),
              Profiletextbuilder(
                hint: '+91xxxxxxxxx',
                label: 'Whatsapp',
              ),
              Profiletextbuilder(
                hint: 'xx@xx.com',
                label: 'Email',
              ),
            ],
          )),
        ),
      ),
    );
  }
}
