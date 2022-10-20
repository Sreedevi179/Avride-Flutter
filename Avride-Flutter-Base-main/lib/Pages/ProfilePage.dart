// ignore_for_file: file_names, prefer_const_constructors

import 'package:ava/Components/buttons.dart';
import 'package:ava/Components/fakeuser.dart';
import 'package:ava/Components/imagefunction.dart';
import 'package:ava/Components/modal/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../loginpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return SafeArea(
      child: Builder(
        builder: (context) => Scaffold(
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 24),
              //imagefun page
              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () {},
              ),
              const SizedBox(height: 24),
              buildName(user),
              const SizedBox(height: 48),
              buildAbout(user),
              const SizedBox(height: 20),
              Center(child: ButtonWidget(
                text: "Saved",
                onClicked: (){},
              )),
              const SizedBox(height: 20),
              Center(child: ButtonWidget(
                text: "Settings",
                onClicked: (){},
              )),
              const SizedBox(height: 20),
              Center(child: ButtonWidget(
                text: "Logout",
                onClicked: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyHomePage()
                  )
                  );


                },
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );



  Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: TextStyle(fontSize: 16, height: 1.4),
        ),
      ],
    ),
  );
}