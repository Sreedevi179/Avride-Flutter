// ignore_for_file: file_names, prefer_const_constructors

import 'package:ava/Components/buttons.dart';
import 'package:ava/Components/fakeuser.dart';
import 'package:ava/Components/imagefunction.dart';
import 'package:ava/Components/modal/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../loginpage.dart';

class NftPage extends StatefulWidget {
  const NftPage({Key? key}) : super(key: key);

  @override
  _NftPageState createState() => _NftPageState();
}

class _NftPageState extends State<NftPage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return SafeArea(
      child: Builder(
        builder: (context) => Scaffold(
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 48),
              //imagefun page
              buildAbout(user),
              const SizedBox(height: 20),
              Center(
                  child: ButtonWidget(
                      text: "NFT Store",
                      onClicked: () => setState(() {
                            _launchURL();
                          }))),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NFT HUB',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'NFTs are digital unique digital assets build on top of a blockchain. Each of them have a unique value, and are specific forms of digital art and expression.',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  void _launchURL() async {
    if (!await launch("https://avridenft.z30.web.core.windows.net/"))
      throw 'Could not launch the website';
  }
}
